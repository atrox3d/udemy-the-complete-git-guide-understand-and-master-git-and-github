#!/bin/bash
code="
import zlib
import sys

try:
    p=sys.argv[1]
    blob=open(p, 'rb').read()
    print(zlib.decompress(blob))
except IndexError:
    print('ERROR | missing parameter: filepath')
except FileNotFoundError:
    print(f'ERROR | path{p} does not exist')
"
python -c "$code" $1
