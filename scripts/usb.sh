#!/bin/bash

deviceList=$(lsusb | grep -v "Linux" | grep -v "IMC" | grep -v "Alcor" | grep -v "Intel" | grep -v "Shenzhen")

if [[ $deviceList != "" ]]; then
    echo "%{F#eeeeee}%{F-}"
    
else
    # echo "%{F#494949}%{F-}"
    echo ""
    
fi