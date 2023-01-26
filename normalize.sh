#!/bin/bash

code='
import sys

DEBUG = False
def dprint(*args, **kwargs):
    if not DEBUG:
        return
    print("DEBUG | ", *args, **kwargs)

text = sys.argv[1:]
dprint(text)

text = "-".join(text)
text = text.lower()

dash = "-"
to_dash = " ,;:"

dot = "."
to_dot = [".-"]

substitutions = {
    dash: to_dash,
    dot: to_dot
}
dprint(substitutions)

for replace, targets in substitutions.items():
    for target in targets:
        text = text.replace(target, replace)

while "--" in text:
    text = text.replace("--", "-")

print(text)
'
python -c "$code" $*
