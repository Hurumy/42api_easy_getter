#!/bin/sh

#argmnt is intraid

#TOKENFILENAME=tokeninfo/token.json
#TOKEN=$(cat $TOKENFILENAME)

USERFILENAME=$(sh getuserinfo.sh $1) 
BHLOG=$(sh get_bh_info.sh $USERFILENAME)
echo $BHLOG

