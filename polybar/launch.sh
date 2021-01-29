#!/bin/bash

# Kill previously running bars so they don't stack
pkill polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

# Lauch the bar
polybar -c ~/.config/polybar/config.ini mine &
