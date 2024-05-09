#!/bin/bash

isPowered="$(bluetoothctl show | grep 'Powered:' | awk '{print $2}')"
isDiscoverable="$(bluetoothctl show | grep 'Discoverable:' | awk '{print $2}')"
isConnected="$(bluetoothctl devices Connected)"

if [[ $isConnected != "" ]]; then
    echo "%{F#eeeeee}%{F-}"

elif [[ $isPowered == "yes" && $isDiscoverable == "yes" ]]; then
    echo "%{F#eeeeee}%{F-}"
    
elif [[ $isPowered == "yes" ]]; then
    echo -e "%{F#eeeeee}%{F-}"
    
else
    echo "%{F#494949}%{F-}"

fi