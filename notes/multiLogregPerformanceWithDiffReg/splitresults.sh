#!/bin/bash

while read LINE
do
  if [[ "$LINE" != \+* ]] 
  then
    if [[ "$LINE" == [1-4]* ]]
    then
      FILE="${LINE}.txt"
      rm -f "$FILE"
    else
      echo "$LINE" >> "$FILE" 
    fi
  fi
done < all.txt
