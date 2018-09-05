#!/usr/bin/python

import os

corpse = open(os.path.realpath('corpse.txt'), 'r')
treatise = filter(lambda it:it!='', corpse.read().split('\n'))
publish = ''
for file in treatise:
        publish+='## '+file.upper()+'\n'*2
        with open(file, 'r') as f:
                publish+=f.read()
	publish+='\n'*2

with open('README.md', 'w') as f:
        f.write(publish)
