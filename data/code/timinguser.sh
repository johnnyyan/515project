#!/bin/bash

USERDIR=${1%/}
cd "$USERDIR"
rm -rf temp* &> /dev/null
rm errors &> /dev/null

# TODO: put each if-else into a file
# Test each problem
if [ -e 0_0.zip ]
then
  # Create a temp dir, unzip into and run all tests under this dir
  mkdir temp0-0
  unzip -o 0_0.zip -d temp0-0 &> /dev/null
	cd temp0-0
  # If there is a source file, compile and test it
  # We consider .C, .cc, .cpp, .CPP, .c++, .cp and .cxx as valid c++ source
  if [ `ls | egrep "\.((C)|(cc)|(cpp)|(CPP)|(c\+\+)|(cp)|(cxx))$" | wc -l` -ge 1 ]
  then
    g++ -Wall -std=gnu++0x -g -o A-small * -lgmpxx &> /dev/null
    if [ -e A-small ]
    then
      ( { time ./A-small ../../../input/A-small-practice.in &> /dev/null; } 2> ../A-small ) & 
      WPID=$!
      ( sleep 10s && kill -HUP $WPID ) 2> /dev/null & watcher=$!
      wait $WPID 2> /dev/null && pkill -HUP -P $watcher
    else
      echo "A-small" >> ../errors
    fi
  fi
  # Delete any new files and go back to the parent dir
  #rm `ls | grep -v '.zip' | grep -v '.txt'`
  #rm *; cd ..
  cd ..
fi

if [ -e 0_1.zip ]
then
  # Create a temp dir, unzip into and run all tests under this dir
  mkdir temp0-1
  unzip -o 0_1.zip -d temp0-1 &> /dev/null
	cd temp0-1
  # If there is a source file, compile and test it
  # We consider .C, .cc, .cpp, .CPP, .c++, .cp and .cxx as valid c++ source
  if [ `ls | egrep "\.((C)|(cc)|(cpp)|(CPP)|(c\+\+)|(cp)|(cxx))$" | wc -l` -ge 1 ]
  then
    g++ -Wall -std=gnu++0x -g -o A-large * -lgmpxx &> /dev/null
    if [ -e A-large ]
    then 
      { time timeout 60s ./A-large ../../../input/A-large-practice.in &> /dev/null; } 2> ../A-large &
    else
      echo "A-large" >> ../errors
    fi
  fi
  cd ..
fi

if [ -e 1_0.zip ]
then
  # Create a temp dir, unzip into and run all tests under this dir
  mkdir temp1-0
  unzip -o 1_0.zip -d temp1-0 &> /dev/null
	cd temp1-0
  # If there is a source file, compile and test it
  # We consider .C, .cc, .cpp, .CPP, .c++, .cp and .cxx as valid c++ source
  if [ `ls | egrep "\.((C)|(cc)|(cpp)|(CPP)|(c\+\+)|(cp)|(cxx))$" | wc -l` -ge 1 ]
  then
    g++ -Wall -std=gnu++0x -g -o B-small * -lgmpxx &> /dev/null
    if [ -e B-small ]
    then 
      { time timeout 10s ./B-small ../../../input/B-small-practice.in &> /dev/null; } 2> ../B-small &
    else
      echo "B-small" >> ../errors
    fi
  fi
  cd ..
fi

if [ -e 1_1.zip ]
then
  # Create a temp dir, unzip into and run all tests under this dir
  mkdir temp1-1
  unzip -o 1_1.zip -d temp1-1 &> /dev/null
	cd temp1-1
  # If there is a source file, compile and test it
  # We consider .C, .cc, .cpp, .CPP, .c++, .cp and .cxx as valid c++ source
  if [ `ls | egrep "\.((C)|(cc)|(cpp)|(CPP)|(c\+\+)|(cp)|(cxx))$" | wc -l` -ge 1 ]
  then
    g++ -Wall -std=gnu++0x -g -o B-large * -lgmpxx &> /dev/null
    if [ -e B-large ]
    then 
      { time timeout 60s ./B-large ../../../input/B-large-practice.in &> /dev/null; } 2> ../B-large &
    else
      echo "B-large" >> ../errors
    fi
  fi
  cd ..
fi

if [ -e 2_0.zip ]
then
  # Create a temp dir, unzip into and run all tests under this dir
  mkdir temp2-0
  unzip -o 2_0.zip -d temp2-0 &> /dev/null
	cd temp2-0
  # If there is a source file, compile and test it
  # We consider .C, .cc, .cpp, .CPP, .c++, .cp and .cxx as valid c++ source
  if [ `ls | egrep "\.((C)|(cc)|(cpp)|(CPP)|(c\+\+)|(cp)|(cxx))$" | wc -l` -ge 1 ]
  then
    g++ -Wall -std=gnu++0x -g -o C-small-1 * -lgmpxx &> /dev/null
    if [ -e C-small-1 ]
    then 
      { time timeout 10s ./C-small-1 ../../../input/C-small-practice-1.in &> /dev/null; } 2> ../C-small-1 &
    else
      echo "C-small-1" >> ../errors
    fi
  fi
  cd ..
fi

if [ -e 2_1.zip ]
then
  # Create a temp dir, unzip into and run all tests under this dir
  mkdir temp2-1
  unzip -o 2_1.zip -d temp2-1 &> /dev/null
	cd temp2-1
  # If there is a source file, compile and test it
  # We consider .C, .cc, .cpp, .CPP, .c++, .cp and .cxx as valid c++ source
  if [ `ls | egrep "\.((C)|(cc)|(cpp)|(CPP)|(c\+\+)|(cp)|(cxx))$" | wc -l` -ge 1 ]
  then
    g++ -Wall -std=gnu++0x -g -o C-small-2 * -lgmpxx &> /dev/null
    if [ -e C-small-2 ]
    then 
      { time timeout 10s ./C-small-2 ../../../input/C-small-practice-2.in &> /dev/null; } 2> ../C-small-2 &
    else
      echo "C-small-2" >> ../errors
    fi
  fi
  cd ..
fi
