#!/bin/bash

# USAGE: ./getcode_qualification.sh username_file source_file_dir

SRCDIR=$1
DSTDIR=${2%/}
small=0
large=1
huge=2

tictactoe_small="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2270488&problem=2453486&io_set_id=${small}&username="
tictactoe_large="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2270488&problem=2453486&io_set_id=${large}&username="
lawnmower_small="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2270488&problem=2449486&io_set_id=${small}&username="
lawnmower_large="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2270488&problem=2449486&io_set_id=${large}&username="
fairsquare_small="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2270488&problem=2463486&io_set_id=${small}&username="
fairsquare_large="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2270488&problem=2463486&io_set_id=${large}&username="
fairsquare_huge="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2270488&problem=2463486&io_set_id=${huge}&username="
treasure_small="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2270488&problem=2458486&io_set_id=${small}&username="
treasure_large="http://code.google.com/codejam/contest/scoreboard/do?cmd=GetSourceCode&contest=2270488&problem=2458486&io_set_id=${large}&username="


echo "Start downloading..." 
TOTAL=`cat $SRCDIR | wc -l`
COUNT=1

for username in `cat $SRCDIR`
do
  PERCENT=`echo "scale=2; $COUNT*100/$TOTAL" | bc`
  COUNT=$((COUNT+1))
  printf "Downloading: %-20s %.2f%%\n" $username $PERCENT

  rm -rf "${DSTDIR}/${username}" &> /dev/null
  mkdir "${DSTDIR}/${username}"
  DIR="${DSTDIR}/${username}/"

  if [ `curl -s "${tictactoe_small}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "${DIR}0_0.zip" "${tictactoe_small}${username}"
  fi
  if [ `curl -s "${tictactoe_large}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "${DIR}0_1.zip" "${tictactoe_large}${username}"
  fi

  if [ `curl -s "${lawnmower_small}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "${DIR}1_0.zip" "${lawnmower_small}${username}"
  fi
  if [ `curl -s "${lawnmower_large}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "${DIR}1_1.zip" "${lawnmower_large}${username}"
  fi

  if [ `curl -s "${fairsquare_small}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "${DIR}2_0.zip" "${fairsquare_small}${username}"
  fi
  if [ `curl -s "${fairsquare_large}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "${DIR}2_1.zip" "${fairsquare_large}${username}"
  fi
  if [ `curl -s "${fairsquare_huge}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "${DIR}2_2.zip" "${fairsquare_huge}${username}"
  fi

  if [ `curl -s "${treasure_small}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "${DIR}3_0.zip" "${treasure_small}${username}"
  fi
  if [ `curl -s "${treasure_large}${username}" | grep "Server Error" | wc -l` -eq 0 ]
  then
    curl -s -o "${DIR}3_1.zip" "${treasure_large}${username}"
  fi

done


