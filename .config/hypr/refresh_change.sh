#!/usr/bin/env bash

MONITOR="eDP-1"
BAT_STATUS="/sys/class/power_supply/BAT1/status"
STATUS=$(cat $BAT_STATUS)

if [ "$STATUS" == "Discharging" ]; then
    hyprctl keyword monitor $MONITOR,2880x1800@60,0x0,2
    rog-panel-od -d
    echo "60Hz"
else
    hyprctl keyword monitor $MONITOR,2880x1800@120,0x0,2
    rog-panel-od -e
    echo "120Hz"
fi
