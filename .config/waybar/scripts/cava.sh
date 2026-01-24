#!/bin/bash
# Create temp config
echo "[general]
bars = 12
[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7" > /tmp/waybar_cava

cava -p /tmp/waybar_cava | while read -r line; do
    echo "$line" | sed 's/;//g' | sed 's/0/ /g' | sed 's/1/▂/g' | sed 's/2/▃/g' | sed 's/3/▄/g' | sed 's/4/▅/g' | sed 's/5/▆/g' | sed 's/6/▇/g' | sed 's/7/█/g'
done
