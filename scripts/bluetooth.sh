#!/bin/bash

isPowered="$(bluetoothctl show | grep 'Powered:' | awk '{print $2}')"
isDiscoverable="$(bluetoothctl show | grep 'Discoverable:' | awk '{print $2}')"
isConnected="$(bluetoothctl devices Connected)"

if [[ $isConnected != "" ]]; then
    echo "%{F#748cab}%{F-}"

elif [[ $isPowered == "yes" && $isDiscoverable == "yes" ]]; then
    echo "%{F#95a9c3}%{F-}"
    
elif [[ $isPowered == "yes" ]]; then
    echo -e "%{F#eeeeee}%{F-}"
    
else
    # echo -e "\e[00;33m"
    echo "%{F#494949}%{F-}"

fi