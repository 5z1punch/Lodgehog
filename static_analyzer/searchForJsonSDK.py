import os

fastjson_package = "com.alibaba.fastjson"
jackson_package = "com.fasterxml.jackson"
gson_package = "com.google.gson"

package_token_set = {
    "fastjson": fastjson_package.split('.'),
    "jackson": jackson_package.split('.'),
    "gson": gson_package.split('.')
}


def search_for_package(dir):
    global package_token_set
    finded_set = {}
    for k in package_token_set:
        finded_set[k] = []
    for root, dirs, files in os.walk(dir):
        for k, v in package_token_set.items():
            finded = False
            for dir in dirs:
                if dir == v[0]:
                    now_path = root
                    i = 1
                    while i < len(v):
                        if v[i] not in os.listdir(os.path.join(now_path, v[i - 1])):
                            break
                        else:
                            now_path = os.path.join(now_path, v[i - 1])
                            i += 1
                    assert len(v)>1
                    if i == len(v):
                        finded = True
                        break
            if finded:
                finded_set[k].append(root)
    return finded_set

if __name__ == '__main__':
    print(search_for_package("D:\\ZIYA\\momo_test\\TestApp_smali"))