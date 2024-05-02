#!/bin/bash

monitorConnected=$(xrandr | grep 'HDMI' | awk '{print $2}')

if [[ $monitorConnected == "connected" ]]; then
    echo "%{F#eeeeee}%{F-}"

fi