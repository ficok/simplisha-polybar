#!/bin/zsh

DIR="$HOME/.config/polybar/simplisha"

pkill polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q main -c "$DIR"/config.ini &
