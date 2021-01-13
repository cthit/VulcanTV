#!/bin/bash

VIDEOID="$(grep -v '^#' videoidlist.txt | shuf -n 1 | sed 's/ .*//')";
VIDEOURL=$(echo "https://www.youtube.com/embed/$VIDEOID?playlist=$VIDEOID&autoplay=1&mute=1&hd=0&loop=1&cc_load_policy=1&cc_lang_pref=en")
./kiosk.sh $VIDEOURL
