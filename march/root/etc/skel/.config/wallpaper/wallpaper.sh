#!/bin/bash

readonly bing='http://www.bing.com'
readonly dst="$HOME/.config/wallpaper/wallpaper.jpg"
while true; do
	img="$(curl -s "$bing/HPImageArchive.aspx?format=js&n=8" | jshon -e images -e $((RANDOM%8)) -e url -u)"

	[[ "$img" ]] && curl -s -o "$dst" "$bing/$img"
	if [[ -f "$dst" ]]; then
		feh --bg-scale "$dst"
		sleep 1h
	else
		sleep 1m
	fi
done
