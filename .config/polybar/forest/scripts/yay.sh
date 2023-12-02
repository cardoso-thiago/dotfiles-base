#!/bin/sh
updates=$(yay -Qu --devel --timeupdate | wc -l)

# Print the available updates if more than 0
if [ "$updates" -gt 0 ]; then
    echo "%{F#FDD835}%{F-} $updates"
else
    echo "%{F#FDD835}%{F-} None"
fi