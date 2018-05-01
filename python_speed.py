#!/usr/bin/env python

import os
import re

datadir = 'data'

pattern = r'.*(?P<email>[\w\.-]+@[\w\.-]+).*'
prog = re.compile(pattern)
counter = 0

for filename in os.listdir(datadir):
    with open("%s/%s" % (datadir, filename)) as file_:
        for line in file_:
            result = prog.match(line)
            if result.group('email'):
                counter += 1 

print('Counter: ', counter)