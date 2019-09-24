def dump_lines(contents, start, num):
    i = 1
    pos = 0
    _str = ""
    while i <= start + num:
        xpos = contents.find("\n", pos) + 1
        if xpos == 0:
            break
        if start <= i:
            _str += contents[pos:xpos]
        pos = xpos
        i += 1
    return _str
