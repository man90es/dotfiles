#!env python

from urllib import request
import json
import os

uri = "https://timeapi.io/api/Time/current/zone?timeZone=Etc/UTC"
res = request.urlopen(uri, timeout=5)
dateTime = json.load(res)["dateTime"]

os.system(f"date -us {dateTime}")
