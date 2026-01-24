#!/bin/bash

# Directory where wallpapers are stored
DIR="/home/xavier/Pictures/Hyprland_Wallpapers"

# Get a list of all images in the folder
WALLPAPERS=($DIR/*)

# Get the current wallpaper being displayed by swww
CURRENT_WALL=$(swww query | awk -F ": " '{print $NF}')

# Find the index of the current wallpaper in the list
for i in "${!WALLPAPERS[@]}"; do
   if [[ "${WALLPAPERS[$i]}" == "${CURRENT_WALL}" ]]; then
       NEXT_INDEX=$(( (i + 1) % ${#WALLPAPERS[@]} ))
       break
   fi
done

# If no current match (first run), start with the first one
NEXT_INDEX=${NEXT_INDEX:-0}

# Set the next wallpaper with a smooth fade
swww img "${WALLPAPERS[$NEXT_INDEX]}" --transition-type wave --transition-angle 90 --transition-wave 60,20 --transition-step 90 --transition-fps 90
