#!/bin/bash
count=`ps -ef | grep "$1" | grep -v "grep" | grep -v "bash" | wc -l`
if [ $count -eq 1 ]; then
echo "pass"
    exit 0
elif [ $count -eq 0 ]; then
    echo "There are $count process is running"
    exit 2
else
    echo "None process is running"
    exit 1 
fi

