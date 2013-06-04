#!/bin/bash

# USAGE: ./getcode_1a.sh username_file source_file_dir

SRCDIR=$1
DSTDIR=${2%/}
small=0
large=1

bullseye_small="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2418487&problem=2464487&io_set_id=${small}&username="
bullseye_large="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2418487&problem=2464487&io_set_id=${large}&username="
energy_small="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2418487&problem=2645486&io_set_id=${small}&username="
energy_large="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2418487&problem=2645486&io_set_id=${large}&username="
luck_small="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2418487&problem=2652486&io_set_id=${small}&username="
luck_large="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2418487&problem=2652486&io_set_id=${large}&username="

echo "Start downloading..." 
TOTAL=`cat $SRCDIR | wc -l`
COUNT=1

for username in `cat $SRCDIR`
do
  PERCENT=`echo "scale=2; $COUNT*100/$TOTAL" | bc`
  COUNT=$((COUNT+1))
  printf "Downloading: %-20s %.2f%%\n" $username $PERCENT

  OLDDIR=`pwd`
  cd "$DSTDIR"

  echo $username
  mkdir -p $username
  cd $username

  if [ `curl -s "${bullseye_small}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "0_0.zip" "${bullseye_small}${username}"
  fi
  if [ `curl -s "${bullseye_large}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "0_1.zip" "${bullseye_large}${username}"
  fi

  if [ `curl -s "${energy_small}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "1_0.zip" "${energy_small}${username}"
  fi
  if [ `curl -s "${energy_large}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "1_1.zip" "${energy_large}${username}"
  fi
  
  if [ `curl -s "${luck_small}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "2_0.zip" "${luck_small}${username}"
  fi
  if [ `curl -s "${luck_large}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "2_1.zip" "${luck_large}${username}"
  fi

  cd "$OLDDIR"
done


