#!/bin/bash

DIR=$HOME/Wallpaper/


while true; do

 PICS=("$DIR"*.jpg "$DIR"*.jpeg "$DIR"*.webp)

 RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

 swww query || swww-daemon

 #change-wallpaper using swww
 swww img "${RANDOMPICS}" --transition-fps 24 --transition-type fade --transition-duration 1
 sleep 60
done