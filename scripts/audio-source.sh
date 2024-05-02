#!/bin/bash

isMuted=$(pacmd list-sources | grep 'muted:' | awk 'NR==2 {print $2}')

if [[ $isMuted == "yes" ]]; then
    echo "%{F#494949}%{F-}"

else
    echo "%{F#eeeeee}%{F-}"

fi