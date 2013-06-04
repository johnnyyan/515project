#!/bin/bash

BASEDIR=${1%/}

for USER in `ls "$BASEDIR"`
do
  ./timinguser.sh "$BASEDIR/$USER" &
done
