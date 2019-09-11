import json
import os
import env

PROPERTY = {}
if os.path.exists(env.PROJECTJSON):
    with open(env.PROJECTJSON) as pjfile:
        PROPERTY = json.loads(pjfile.read())

# TODO
def check_origin_odex():
    global PROPERTY
    if "origin_odex" in PROPERTY:
        if os.path.exists(PROPERTY["origin_odex"]):
            pass