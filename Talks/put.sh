#!/bin/sh
while true 
do
    put index.html
    sleep 5
    echo "Last updated at " date+%T
done

#in sftp do : repeat --while-ok -d 15 put index.html for 5 secs