#!/bin/bash
HERE="$(dirname ${BASH_SOURCE[0]})"
touch $("${HERE}"/normalize.sh $*).txt
