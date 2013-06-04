#!/bin/bash

COUNT=`unzip -l ${1}_${2}.zip | awk '/-----/ {p = ++p % 2; next} p {print $NF}' \
| egrep "\.((C)|(cc)|(cpp)|(CPP)|(c\+\+)|(cp)|(cxx))$" | wc -l`
if [ $COUNT -le 0 ]
then
  rm -f "${1}_${2}.zip" &> /dev/null
fi
