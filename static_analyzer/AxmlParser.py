import sys
from struct import pack, unpack

CHUNK_HEAD = 0x00080003
CHUNK_STRING = 0x001c0001
CHUNK_RESOURCE = 0x00080180

CHUNK_STARTNS = 0x00100100
CHUNK_ENDNS = 0x00100101
CHUNK_STARTTAG = 0x00100102
CHUNK_ENDTAG = 0x00100103
CHUNK_TEXT = 0x00100104

TYPE_ATTRIBUTE = 2
TYPE_DIMENSION = 5
TYPE_FIRST_COLOR_INT = 28
TYPE_FIRST_INT = 16
TYPE_FLOAT = 4
TYPE_FRACTION = 6
TYPE_INT_BOOLEAN = 18
TYPE_INT_COLOR_ARGB4 = 30
TYPE_INT_COLOR_ARGB8 = 28
TYPE_INT_COLOR_RGB4 = 31
TYPE_INT_COLOR_RGB8 = 29
TYPE_INT_DEC = 16
TYPE_INT_HEX = 17
TYPE_LAST_COLOR_INT = 31
TYPE_LAST_INT = 31
TYPE_NULL = 0
TYPE_REFERENCE = 1
TYPE_STRING = 3

SIZE_U32 = 4
SIZE_ATTR = 5 * SIZE_U32
SIZE_STARTTAG = 9 * SIZE_U32
SIZE_ENDTAG = 6 * SIZE_U32

p32 = lambda x, y: x.write(pack("<I", y))
p16 = lambda x, y: x.write(pack("<h", y))
u32 = lambda x: unpack("<I", x.read(4))[0]
u16 = lambda x: unpack("<h", x.read(2))[0]

DEBUG = False


def log(*iterables):
    if DEBUG:
        print(iterables)


class StringChunk:
    def __init__(self, f):
        if u32(f) != CHUNK_STRING:
            raise Exception("String chunk magic error")

        self.size = u32(f)
        self.string_count = u32(f)
        self.style_count = u32(f)
        self.flags = u32(f)
        self.is_utf8 = self.flags & 0x00000100
        self.get_string = self.get_utf_string if self.is_utf8 else self.get_ascii_string
        self.string_pool_offset = u32(f)
        self.style_pool_offset = u32(f)
        self.string_offset = list()
        self.style_offset = list()
        for i in range(self.string_count):
            self.string_offset.append(u32(f))
        for i in range(self.style_count):
            self.style_offset.append(u32(f))
        self.string_pool_size = self.style_pool_offset - self.string_pool_offset if self.style_pool_offset != 0 else self.size - self.string_pool_offset
        self.style_pool_size = self.size - self.style_pool_offset if self.style_pool_offset != 0 else 0
        self.string_pool_data = f.read(self.string_pool_size)
        self.style_pool_data = list()
        for i in range(self.style_pool_size // 4):
            self.style_pool_data.append(u32(f))

    def build(self, f):
        p32(f, CHUNK_STRING)
        p32(f, self.size)
        p32(f, self.string_count)
        p32(f, self.style_count)
        p32(f, self.flags)
        p32(f, self.string_pool_offset)
        p32(f, self.style_pool_offset)
        for i in range(self.string_count):
            p32(f, self.string_offset[i])
        for i in range(self.style_count):
            p32(f, self.style_offset[i])
        f.write(self.string_pool_data)
        for i in range(self.style_pool_size // 4):
            p32(f, self.style_pool_data[i])

    def get_ascii_string(self, index):
        offset = self.string_offset[index]
        length = unpack("<h", self.string_pool_data[offset:offset + 2])[0] * 2

        data = self.string_pool_data[offset + 2:offset + 2 + length]
        end = data.find(b"\x00\x00")
        if end != -1:
            data = data[:end]
        return data.decode('utf-16', errors='ignore')

    def get_varint(self, array, offset):
        if isinstance(array[offset], int):
            val = array[offset]
        else:
            val = ord(array[offset])
        log("val:", val)
        more = (val & 0x80) != 0
        val &= 0x7f

        if not more:
            return val, 1
        return val << 8 | (ord(array[offset + 1]) & 0xff), 2

    def decode(self, array, offset, length):
        return array[offset:offset + length].decode("utf-8")

    def get_utf_string(self, index):
        offset = self.string_offset[index]
        offset += self.get_varint(self.string_pool_data, offset)[1]
        varint = self.get_varint(self.string_pool_data, offset)

        offset += varint[1]
        length = varint[0]
        return self.decode(self.string_pool_data, offset, length)

    def add_string(self, string):
        length = len(string)
        data = string.encode("utf-16").replace(b"\xFF\xFE", b"") + b"\x00\x00"
        offset = len(self.string_pool_data)
        self.string_offset.append(offset)
        self.string_pool_data += pack("<h", length)
        self.string_pool_data += data
        size_length = 2
        size_offset = 4
        size_zero = 2
        self.string_pool_size += length * 2 + size_length + size_zero
        self.string_pool_offset += size_offset
        self.size += length * 2 + size_length + size_offset + size_zero
        self.string_count += 1
        return self.string_offset.index(offset)

    # TODO
    def add_utf_string(self, string):
        return None


class ResourceChunk:
    def __init__(self, f):
        if u32(f) != CHUNK_RESOURCE:
            raise Exception("Resource chunk magic error")
        self.size = u32(f)
        self.count = self.size // 4 - 2
        self.resource_ids = list()
        for i in range(self.count):
            self.resource_ids.append(u32(f))

    def build(self, f):
        p32(f, CHUNK_RESOURCE)
        p32(f, self.size)
        for i in range(self.count):
            p32(f, self.resource_ids[i])


class Attribute:
    def __init__(self, name=None, data=None, attribute_type=None, uri=0xffffffff, file=None):
        if file is not None:
            self.load(file)
        else:
            self.uri = uri
            self.name = name
            self.type = attribute_type
            self.previous = None
            self.next = None
            self.size = SIZE_ATTR
            if attribute_type == TYPE_STRING:
                self.string = data
                self.data = data
            elif attribute_type == TYPE_INT_BOOLEAN:
                self.data = 1 if data is True else 0
            else:
                raise Exception("Sorry, other types haven't been written")
            # XXX
            # many types haven't been written

    def load(self, f):
        self.uri = u32(f)
        self.name = u32(f)
        self.string = u32(f)
        self.size = u16(f)
        self.type = u16(f) >> 8
        self.data = u32(f)

        self.previous = None
        self.next = None

    def build(self, f):
        p32(f, self.uri)
        p32(f, self.name)
        p32(f, self.string)
        p16(f, self.size)
        p16(f, self.type << 8)
        p32(f, self.data)


class ContentChunk:

    def __init__(self, tag_name=None, tag_type=None, file=None):
        self.previous = None
        self.next = None
        self.wtf1 = None
        self.wtf2 = None
        self.prefix = 0
        self.attribute_count = 0
        self.class_attribute = 0
        self.style_attribute = 0
        self.attribute = None
        self.name = None

        if tag_type == CHUNK_STARTTAG:
            self.type = tag_type
            self.size = SIZE_STARTTAG
            self.line_number = 0
            self.minus_one = 0xffffffff
            self.uri = 0xffffffff
            self.name = tag_name
            self.flag = 0x00140014
            self.attribute_class = 0
            self.attribute = None
        elif tag_type == CHUNK_ENDTAG:
            self.type = tag_type
            self.size = SIZE_ENDTAG
            self.line_number = 0
            self.minus_one = 0xffffffff
            self.uri = 0xffffffff
            self.name = tag_name

        if file:
            self.load(file)

    def load(self, f):
        self.type = u32(f)
        self.size = u32(f)
        self.line_number = u32(f)
        self.minus_one = u32(f)
        parse_node = {
            CHUNK_STARTNS: self.start_namespace_handler,
            CHUNK_ENDNS: self.end_namespace_handler,
            CHUNK_STARTTAG: self.start_tag_handler,
            CHUNK_ENDTAG: self.end_tag_handler,
            CHUNK_TEXT: self.text_handler
        }
        parse_node[self.type](f)

    def build(self, f):
        build_node = {
            CHUNK_STARTNS: self.start_namespace_builder,
            CHUNK_ENDNS: self.end_namespace_builder,
            CHUNK_STARTTAG: self.start_tag_builder,
            CHUNK_ENDTAG: self.end_tag_builder,
            CHUNK_TEXT: self.text_builder
        }
        p32(f, self.type)
        p32(f, self.size)
        p32(f, self.line_number)
        p32(f, self.minus_one)
        build_node[self.type](f)

    def start_namespace_handler(self, f):
        self.prefix = u32(f)
        self.uri = u32(f)

    def start_namespace_builder(self, f):
        p32(f, self.prefix)
        p32(f, self.uri)

    def end_namespace_handler(self, f):
        self.prefix = u32(f)
        self.uri = u32(f)

    def end_namespace_builder(self, f):
        p32(f, self.prefix)
        p32(f, self.uri)

    def start_tag_handler(self, f):
        self.uri = u32(f)
        self.name = u32(f)
        self.flag = u32(f)
        self.attribute_count = u32(f)
        self.class_attribute = u16(f)
        self.style_attribute = u16(f)
        attribute_last = None
        self.attribute = None
        for i in range(self.attribute_count):
            attribute = Attribute(file=f)
            if attribute_last:
                attribute_last.next = attribute
                attribute.previous = attribute_last
                attribute_last = attribute
            if self.attribute is None:
                self.attribute = attribute
                attribute_last = attribute

    def start_tag_builder(self, f):
        p32(f, self.uri)
        p32(f, self.name)
        p32(f, self.flag)
        p32(f, self.attribute_count)
        p16(f, self.class_attribute)
        p16(f, self.style_attribute)
        attribute = self.attribute
        for i in range(self.attribute_count):
            attribute.build(f)
            attribute = attribute.next
            if attribute is None:
                break

    def end_tag_handler(self, f):
        self.uri = u32(f)
        self.name = u32(f)

    def end_tag_builder(self, f):
        p32(f, self.uri)
        p32(f, self.name)

    def text_handler(self, f):
        self.name = u32(f)
        self.wtf1 = u32(f)
        self.wtf2 = u32(f)

    def text_builder(self, f):
        p32(f, self.name)
        p32(f, self.wtf1)
        p32(f, self.wtf2)


class Axml:

    def __init__(self, f):
        self.content_chunk = None
        self.buffer = ""
        self.size = 0
        self.string_chunk = None
        self.resource_chunk = None

        self.namespace = {}
        self.main_activity = ""
        self.application = ""
        self.package = ""

        self.parse_header(f)
        self.parse_string(f)
        self.parse_resource(f)
        self.parse_content(f)

        self.analyse()

    def rebuild(self, f):
        self.build_header(f)
        self.build_string(f)
        self.build_resource(f)
        self.build_content(f)

    def build_header(self, f):
        p32(f, CHUNK_HEAD)
        p32(f, self.size)

    def parse_header(self, f):
        magic = u32(f)
        if magic != CHUNK_HEAD:
            print(magic, CHUNK_HEAD)
            raise Exception("magic number wrong.")
        self.size = u32(f)

    def build_string(self, f):
        self.string_chunk.build(f)

    def parse_string(self, f):
        self.string_chunk = StringChunk(f)

    def build_resource(self, f):
        self.resource_chunk.build(f)

    def parse_resource(self, f):
        self.resource_chunk = ResourceChunk(f)

    def parse_content(self, f):
        self.content_chunk = None
        content_chunk_last = None
        while self.size != f.tell():
            content_chunk = ContentChunk(file=f)
            if content_chunk_last:
                content_chunk_last.next = content_chunk
                content_chunk.previous = content_chunk_last
                content_chunk_last = content_chunk
            if self.content_chunk is None:
                self.content_chunk = content_chunk
                content_chunk_last = content_chunk

    def build_content(self, f):
        content_chunk = self.content_chunk
        while content_chunk is not None:
            content_chunk.build(f)
            content_chunk = content_chunk.next

    def add_tag(self, tag_name, start, end, attribute=None):
        self.size -= self.string_chunk.size
        tag_name_index = self.string_chunk.add_string(tag_name)
        start_chunk = ContentChunk(tag_name_index, CHUNK_STARTTAG)
        end_chunk = ContentChunk(tag_name_index, CHUNK_ENDTAG)

        chunk = self.content_chunk
        for i in range(start):
            chunk = chunk.next
        if chunk.next is not None:
            chunk.next.previous = start
        start_chunk.next = chunk.next
        chunk.next = start_chunk
        start_chunk.previous = chunk
        for i in range(end - start):
            chunk = chunk.next
        if chunk.next is not None:
            chunk.next.previous = end_chunk
        end_chunk.next = chunk.next
        chunk.next = end_chunk
        end_chunk.previous = chunk

        if attribute:
            for name, value, attribute_type, namespace in attribute:
                self.add_attribute(name, value, attribute_type, namespace, chunk=start_chunk)

        self.size += start_chunk.size + end_chunk.size + self.string_chunk.size

    def add_attribute(self, name, value, attribute_type, namespace=None, tag_name=None, index=0, chunk=None):
        if chunk is None:
            chunk = self.find_chunk_by_name(tag_name, index)
        name = self.string_chunk.add_string(name)
        uri = 0xffffffff
        if attribute_type == TYPE_STRING:
            value = self.string_chunk.add_string(value)
        if namespace is not None:
            try:
                uri = self.namespace[namespace]
            except KeyError:
                raise Exception("this apk don't have this NameSpace, please check.")
        attribute = Attribute(name, value, attribute_type, uri)
        attribute.next = chunk.attribute
        if chunk.attribute is not None:
            chunk.attribute.previous = attribute
        chunk.attribute = attribute
        chunk.size += attribute.size
        chunk.attribute_count += 1

    def find_chunk_by_name(self, tag_name, idx=1, chunk_type=CHUNK_STARTTAG):
        chunk = self.content_chunk
        while chunk :
            if chunk.type==chunk_type and chunk.name and self.string_chunk.get_string(chunk.name) == tag_name :
                break
            chunk = chunk.next
        else:
            return None

        for i in range(idx-1):
            chunk = chunk.next
            while chunk :
                if chunk.type==chunk_type and chunk.name and self.string_chunk.get_string(chunk.name) == tag_name :
                    break
                chunk = chunk.next
            else:
                return None
        return chunk

    def find_attribute(self, attribute_name, chunk, idx=1):
        attribute = chunk.attribute
        while attribute:
            if attribute.name and self.string_chunk.get_string(attribute.name) == attribute_name:
                break
            attribute = attribute.next
        else:
            return None

        for i in range(idx-1):
            attribute = attribute.next
            while attribute:
                if attribute.name and self.string_chunk.get_string(attribute.name) == attribute_name:
                    break
                attribute = attribute.next
            else:
                return None
        return attribute

    def modify_attribute(self, attribute, value):
        type = attribute.type
        # TODO add more types
        if type == TYPE_INT_BOOLEAN:
            attribute.data = value

    def analyse(self):
        chunk = self.content_chunk
        while chunk:
            # Namespace
            if chunk.type == CHUNK_STARTNS:
                self.namespace[self.string_chunk.get_string(chunk.prefix)] = chunk.uri
            # MainActivity
            elif chunk.type == CHUNK_STARTTAG and self.string_chunk.get_string(
                    chunk.name) == "category" and self.main_activity == "":
                attribute = chunk.attribute
                test_chunk = chunk
                while attribute is not None:
                    # android:enabled != false
                    if self.string_chunk.get_string(attribute.name) == "name" and \
                            self.string_chunk.get_string(attribute.string) == "android.intent.category.LAUNCHER":
                        flag = False
                        while test_chunk and test_chunk.name and self.string_chunk.get_string(test_chunk.name) not in ["activity", "activity-alias"]:
                            if test_chunk.type == CHUNK_STARTTAG and self.string_chunk.get_string(test_chunk.name) == "action":
                                if test_chunk.attribute and self.string_chunk.get_string(test_chunk.attribute.string) == "android.intent.action.MAIN":
                                    flag = True
                            test_chunk = test_chunk.previous
                        if not test_chunk or not test_chunk.name:
                            attribute = attribute.next
                            continue
                        attr_ = test_chunk.attribute
                        test_chunk = test_chunk.next

                        while test_chunk and test_chunk.name and self.string_chunk.get_string(test_chunk.name) not in ["activity", "activity-alias"]:
                            if test_chunk.type == CHUNK_STARTTAG and  self.string_chunk.get_string(test_chunk.name) == "action":
                                if test_chunk.attribute and self.string_chunk.get_string(test_chunk.attribute.string) == "android.intent.action.MAIN":
                                    flag = True
                            test_chunk = test_chunk.next
                        # don't have two action, skip
                        if not flag:
                            attribute = attribute.next
                            continue

                        while attr_ is not None:
                            if self.string_chunk.get_string(attr_.name) == "name":
                                self.main_activity = self.string_chunk.get_string(attr_.string)

                            # android:enabled=false
                            if self.string_chunk.get_string(attr_.name) == "enabled" and attr_.data == 0:
                                self.main_activity = ""
                            attr_ = attr_.next
                    attribute = attribute.next
            # applicationClass
            elif chunk.type == CHUNK_STARTTAG and self.string_chunk.get_string(chunk.name) == "application" and self.application == "":
                attribute = chunk.attribute
                while attribute is not None:
                    if self.string_chunk.get_string(attribute.name) == "name":
                        self.application = self.string_chunk.get_string(attribute.string)
                    # modify extractNativeLibs
                    if self.string_chunk.get_string(attribute.name) == "extractNativeLibs":
                        print("Find extractNativeLibs: %d"%attribute.data)
                        attribute.data = 1
                    attribute = attribute.next
            # package_name
            elif chunk.type == CHUNK_STARTTAG and self.string_chunk.get_string(chunk.name) == "manifest":
                attribute = chunk.attribute
                while attribute is not None:
                    if self.string_chunk.get_string(attribute.name) == "package":
                        self.package = self.string_chunk.get_string(attribute.string)
                    attribute = attribute.next
            chunk = chunk.next
    def print_all(self):
        prefix_by_uri = {}
        chunk = self.content_chunk
        depth = 0
        while chunk is not None:
            if chunk.type in [CHUNK_STARTNS, CHUNK_ENDNS]:
                print("prefix:", self.string_chunk.get_string(chunk.prefix))
                print("uri:", self.string_chunk.get_string(chunk.uri))
                prefix_by_uri[chunk.uri] = self.string_chunk.get_string(chunk.prefix) + ":"
            elif chunk.type == CHUNK_STARTTAG:
                log(self.string_chunk.get_string(chunk.name))
                print("%s<%s" % ("\t" * depth, self.string_chunk.get_string(chunk.name)))
                depth += 1
                attribute = chunk.attribute
                while attribute is not None:
                    name = self.string_chunk.get_string(attribute.name)
                    try:
                        prefix = prefix_by_uri[attribute.uri]
                    except KeyError:
                        prefix = ""
                    if attribute.type == TYPE_STRING:
                        string = self.string_chunk.get_string(attribute.string)
                        s = string
                    elif attribute.type == TYPE_ATTRIBUTE:
                        package = ""
                        if attribute.data >> 24 == 1:
                            package = "android:"
                        s = "?%s%08x" % (package, attribute.data)
                    elif attribute.type == TYPE_REFERENCE:
                        package = ""
                        if attribute.data >> 24 == 1:
                            package = "android:"
                        s = "@%s%08x" % (package, attribute.data)
                    elif attribute.type == TYPE_FLOAT:
                        s = "%f" % unpack("=f", pack("=L", attribute.data))[0]
                    elif attribute.type == TYPE_INT_HEX:
                        s = "0x%08X" % attribute.data
                    elif attribute.type == TYPE_INT_BOOLEAN:
                        s = "true" if attribute.data else "false"
                    elif TYPE_FIRST_COLOR_INT <= attribute.type <= TYPE_LAST_COLOR_INT:
                        s = "#%08X" % attribute.data
                    elif TYPE_FIRST_INT <= attribute.type <= TYPE_LAST_INT:
                        s = "%d" % attribute.data
                    else:
                        pass
                        #raise Exception("Unexpected Type:" + hex(attribute.type))
                    # XXX
                    # many types haven't been written

                    print("%s%s%s=%s" % ("\t" * depth, prefix, name, s))
                    attribute = attribute.next
                print("%s>" % ("\t" * depth))
            elif chunk.type == CHUNK_ENDTAG:
                depth -= 1
                print("%s</%s>" % ("\t" * depth, self.string_chunk.get_string(chunk.name)))
            chunk = chunk.next


if __name__ == "__main__":
    if len(sys.argv) < 2:
        with open('AndroidManifest.xml', 'rb') as f:
            axml = Axml(f)
    else:
        with open(sys.argv[1], 'rb') as f:
            axml = Axml(f)

    print("Analyse finished.")
    print("MainActivity:\t%s" % axml.main_activity)
    print("Application:\t%s" % axml.application)
    print("Package:\t%s" % axml.package)
    # axml.print_all()
