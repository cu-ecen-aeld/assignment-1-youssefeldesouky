#!/usr/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: ./finder filesdir searchstr"
    exit 1
fi

writefile=$1
writestr=$2

touch $writefile && echo $writestr > $writefile

if [ $? -ne 0 ]; then
    echo "Error: file $writefile could not be created"
    exit 1
fi

exit 0