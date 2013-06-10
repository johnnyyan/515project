#!/bin/bash

for FILE in `ls *.txt | egrep [1-4].*`
do
  tail -n 1 $FILE >> log
done
