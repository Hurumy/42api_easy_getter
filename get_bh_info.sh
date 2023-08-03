#!/bin/sh

#argment is userfilename

DATE=$(date "+%s")
ORIGINFILEPATH=$1
USERFILENAME=$(echo $ORIGINFILEPATH | awk -F/ '{ print $3 }')
USERNAME=$(echo $USERFILENAME | awk -F_ '{print $1}')
OUTDIRNAME=bhlog
OUTFILENAME=$OUTDIRNAME/$USERNAME/$USERFILENAME

mkdir $OUTDIRNAME | true
cd $OUTDIRNAME
mkdir $USERNAME | true
cd ..
cat $ORIGINFILEPATH | grep -e "blackhole" -e "end_at" > $OUTFILENAME
echo $OUTFILENAME

