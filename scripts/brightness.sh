#!/bin/bash

if [[ -z $1 ]]; then
    echo -n 'Current brightness: '
    cat /sys/class/backlight/intel_backlight/brightness
else
    current=`cat /sys/class/backlight/intel_backlight/brightness`
    max=`cat /sys/class/backlight/intel_backlight/max_brightness`
    new=$(($current + $1))

    if [[ $new -gt $max ]]; then
        new=$max
    fi
    
    echo $new | gksu tee /sys/class/backlight/intel_backlight/brightness
    #echo $new > /sys/class/backlight/intel_backlight/brightness
    echo "Brightness updated: $new"
fi
