#!/usr/bin/env sh

killall -q polybar
while pgrep -x polybar > /dev/null; do sleep 1; done
polybar example &

killall -q termite
while pgrep -x termite > /dev/null; do sleep 1; done
termite &

xrandr --dpi 210
