#!/bin/bash

# read config info from wrapper-app-property.conf
echo read config info from $1
while read line; do
    trim=$(echo ${line} | sed 's/^[ ]*//g' | sed 's/[ ]*$//g')
    if [ "x$trim" == "x" ]; then
        # ignore empty line
        continue;
    fi
    rem=$(echo ${trim:0:1})
    if [ "x$rem" == "x#" ]; then
        # ignore rem line
        continue;
    fi
    tmp1=$(echo ${trim:0:4})
    tmp2=$(echo ${trim:4})
    if [ "x$tmp1" != "xset." ]; then
        # ignore not set.
        continue;
    fi
    key=$(echo _${tmp2%%=*} | sed 's/^[ ]*//g' | sed 's/[ ]*$//g')
    value=$(echo ${tmp2#*=} | sed 's/^[ ]*//g' | sed 's/[ ]*$//g')
    # echo -key:$key=value:$value-
    eval "$key=$value"
done < "$1"
