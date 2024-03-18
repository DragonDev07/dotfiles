#!/bin/bash

# Directory containing wallpapers
wallpaper_dir=~/Repos/Wallpapers

# Use find to list all image files in the directory and its subdirectories
# Extract the base name from the full path and pass it to rofi
selected_wallpaper=$(find $wallpaper_dir -type f \( -iname \*.jpg -o -iname \*.png \) -exec basename {} \; | rofi -dmenu -i -p 'Select Wallpaper')

# Check if a wallpaper was selected
if [[ ! -z "$selected_wallpaper" ]]; then
    # Find the full path of the selected wallpaper
    selected_path=$(find $wallpaper_dir -type f \( -iname $selected_wallpaper -o -iname ${selected_wallpaper%.*} \) | head -n 1)
    
    # Set the selected wallpaper using swww
    swww img $selected_path
else
    echo "No wallpaper selected."
fi

