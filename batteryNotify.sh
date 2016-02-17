#!/bin/bash
#Battery low notifier that works with i3-navgar

BATPATH=/sys/class/power_supply/BAT0
BAT_FULL=$BATPATH/charge_full
BAT_NOW=$BATPATH/charge_now
BAT_STATUS=$BATPATH/status
bf=$(cat $BAT_FULL)
bn=$(cat $BAT_NOW)
bs=$(cat $BAT_STATUS)
if [ $(( 100 * $bn / $bf )) -lt 15 -a "$bs" != "Charging" ]
then
    i3-nagbar -t error -m 'LOW BATTERY'
fi

