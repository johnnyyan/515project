#!/bin/bash

# USAGE: ./combineusername.sh round_name/username_* username

cat $1 > username

for name in `cat $2`
do
  if [ `grep $name username | wc -l` -eq 0 ]
  then
    echo $name >> username
  fi
done

for name in `cat $3`
do
  if [ `grep $name username | wc -l` -eq 0 ]
  then
    echo $name >> username
  fi
done
