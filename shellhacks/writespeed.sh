#!/bin/sh
###

#TESTFILE=TEMPFILE
if [ -Z "$1" ]
  then
    echo "writing 1 megabyte to current drive at $pwd for test"
else
    echo "writing 1 megabyte to $1 for test"
    set testfile = $1/tempfile
echo "Helo World: $testfile"
#dd if=/dev/zero of=$testfile  bs=1M count=1024; sync
