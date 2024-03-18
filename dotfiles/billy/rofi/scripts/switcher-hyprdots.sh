r_override="element{border-radius:10px;} listview{columns:6;spacing:100px;} element{padding:0px;orientation:vertical;} element-icon{size:512;border-radius:0px;} element-text{padding:20px;orientation:vertical;}"
wallPath="$HOME/Repos/Wallpapers"
RofiConf="$HOME/.config/rofi/themeswitcher.rasi"

RofiSel=$( find "$HOME/Repos/Wallpapers" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | while read rfile
do
    # generate thumbnail
    thumbnail="${rfile%.*}_thumb.${rfile##*.}"
    if [ ! -f "${thumbnail}" ]; then
        convert "${rfile}" -thumbnail 3840x2160 "${thumbnail}"
    fi
    # get the basename of the file
    basefile=$(basename "${rfile}")
    echo -en "$basefile\x00icon\x1f${thumbnail}\n"
# w/o theme override:
done | rofi -dmenu -config "${RofiConf}")

# w/ theme override:
# done | rofi -dmenu -theme-str "${r_override}" -config "${RofiConf}")

# Check if RofiSel is not empty
if [ ! -z "${RofiSel}" ] ; then
    # Apply the wallpaper
    finalWall=$(find "$HOME/Repos/Wallpapers" -name "${RofiSel}")
    swww img "${finalWall}" --transition-step 40 --transition-fps 60 --transition-type center
fi

find "$HOME/Repos/Wallpapers" -type f -name "*_thumb.*" -delete