#!/bin/sh

#first argment is the intra name

DATE=$(date)
TIMESTAMP=$(date "+%s")
ACCESS_TOKEN=$(cat tokeninfo/token.json | tr '{' ' ' | grep "access_token" | awk -F: '{ print $2 }' | sed "s/\"//g")
FILEPATH=userinfo/$1/$1_$TIMESTAMP.json

mkdir userinfo | true
cd userinfo
mkdir $1 | true
cd ..
echo $DATE >> $FILEPATH
echo '\n' >> $FILEPATH
curl -X GET -H "Authorization: Bearer $ACCESS_TOKEN" https://api.intra.42.fr/v2/users/$1 | tr ',' '\n' >> $FILEPATH
echo $FILEPATH

