#!/bin/sh
###

#TESTFILE=TEMPFILE
#IF [ -Z "$1" ]
#  THEN
#    ECHO "WRITING 1 MEGABYTE TO CURRENT DRIVE AT $pwd FOR TEST"
#ELSE
#    ECHO "wRITING 1 MEGABYTE TO $1 FOR TEST"
#    SET TESTFILE = $1$TEMPFILE

dd if=/dev/zero of=tempfile bs=1M count=1024; sync