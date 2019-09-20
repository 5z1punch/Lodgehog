import os
import sys

ORIGIN_STDOUT = sys.stdout
ORIGIN_STDERR = sys.stderr
SHATAG = ""

class StreamWrapper(object):
   def __init__(self, file_hanlde):
      self.file_hanlde = file_hanlde

   def write(self, buf):
      for line in buf.rstrip().splitlines():
         self.file_hanlde.write(f"[{SHATAG}]: {line.rstrip()}\n")

def init(sha1, stdout = None, stderr = None):
    global SHATAG
    if stdout:
        out_handle = open(stdout, 'w', encoding="utf-8") if type(stdout)=="str" else stdout
        out_handle = StreamWrapper(out_handle)
    else:
        out_handle = open(os.devnull, 'w', encoding="utf-8")
    if stderr:
        error_handle = open(stderr, 'w', encoding="utf-8") if type(stderr)=="str" else stderr
        error_handle = StreamWrapper(error_handle)
    else:
        error_handle = open(os.devnull, 'w', encoding="utf-8")
    sys.stdout = out_handle
    sys.stderr = error_handle
    SHATAG = sha1

def error_print(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)