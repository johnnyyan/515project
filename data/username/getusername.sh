#!/bin/bash

# USAGE: ./getusername.sh round_name/problem > round_name/username_problem

string=`cat $1`
pattern="username=[a-zA-Z0-9.]+"

for word in $string 
do 
  [[ $word =~ $pattern ]]; 
  if [[ ${BASH_REMATCH[0]} ]]; then 
    match="${BASH_REMATCH[0]}"; 
    echo $match | sed 's/username=\(.*\)/\1/g';  
  fi; 
done

