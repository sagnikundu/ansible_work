#!/usr/bin/python

import sys
import json
from pprint import pprint

filename = sys.argv[1]

with open(filename) as data_file:
  data = json.load(data_file)

pprint(data['pak_id'])
