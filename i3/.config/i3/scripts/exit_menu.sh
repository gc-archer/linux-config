#!/bin/bash
while [ "$select" != "No" -a "$select" != "Yes" ]; do
    select=$(echo -e 'No\nYes' | dmenu -nb '#000000' -nf '#850cb2' -sb '#000000' -sf '#fe15bc' -fn overpass:style=regular:pixelsize=14 -i -p "Are you sure you want to logout?")
    [ -z "$select" ] && exit 0
done
[ "$select" = "No" ] && exit 0
i3-msg exit
