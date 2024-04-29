#!/bin/bash

simplishaFile=~/.SIMPLISHA
compyFile=~/.COMPY

test -e $compyFile
if [ $? -eq 0 ]; then
    mv $simplishaFile $compyFile
fi

DIR="$HOME/.config/polybar/simplisha"

pkill polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q main -c "$DIR"/config.ini &
