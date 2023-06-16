#!/usr/bin/env bash

echo "We're pretending to be firefox to httrack"

while true
do
    pidof htsserver > /dev/null
    if [ $? = 1 ]; then
        killall webhttrack
        echo Restarting webhttrack
        webhttrack
    fi
    sleep 15
done

