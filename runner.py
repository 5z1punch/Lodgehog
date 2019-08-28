import sys
import os
from oat_repacker import init, pack_helper

opt_tmp = os.path.join(os.path.dirname(os.path.realpath(__file__)),"tmp")

def main():
    apk_path = sys.argv[1]
    package_name = sys.argv[2]
    init.init_vm_env()
    apk_filename = os.path.basename(apk_path)
    pack_helper.unpack_apk(apk_path, os.path.join(opt_tmp, os.path.splitext(apk_filename)[0]))
if __name__ == '__main__':
    main()