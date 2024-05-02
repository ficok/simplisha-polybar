#!/bin/bash

sink="$(pacmd list-sinks | grep "active port" | awk '{print $3}')"

if [ $sink == "<analog-output-headphones>" ]; then
    # echo -n '󰋋'
    echo -n ""
else
    # echo -n '󰓃'
    echo -n ""
fi