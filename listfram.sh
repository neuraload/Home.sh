#!/bin/bash
# Simple script to retrieve / output the amount of free RAM.
# Coded by balM {2013-02-05}

raminfo=`free -mt | awk NR==3'{print $4}'`

if [[ $raminfo < 1000 ]]; then
    echo "Warning, you have $raminfo memory left."
else
    echo "You have enough memory, $raminfo MB left."
fi
