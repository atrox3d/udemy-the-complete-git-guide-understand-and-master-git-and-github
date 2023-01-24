#!/bin/bash
python -c 'import sys;path="-".join(sys.argv[1:]).lower().replace(".-", ".");print(path)' $*
