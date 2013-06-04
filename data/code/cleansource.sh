#!/bin/bash

# USAGE: ./cleansource.sh source_file_dir
# cleansource.sh and cleansinglesource.sh should be in same directory

BASEDIR=${1%/}
TOTAL=`ls $BASEDIR | wc -l`
COUNT=1

for USER in `ls "$BASEDIR"`
do
  PERCENT=`echo "scale=2; $COUNT*100/$TOTAL" | bc`
  COUNT=$((COUNT+1))
  printf "Cleaning: %-20s %.2f%%\n" $USER $PERCENT

  # Go the user's folder
  cd $BASEDIR/$USER

  # Clean up none c++ source zip files
  for i in 0 1 2 # add 3 for qualification round
  do 
    for j in 0 1
    do 
        if [ -e ${i}_${j}.zip ]
        then 
          ../../cleansinglesource.sh $i $j
        fi
    done
  done

	# add these lines for qualification round
#  if [ -e 2_2.zip ]
#  then 
#    ../../cleansinglesource.sh 2 2
#  fi    

  # Go back to base folder
  cd ../../
done
