#!/bin/sh
updates=$(yay -Qu --devel --timeupdate | wc -l)

# Print the available updates if more than 0
if [ "$updates" -gt 0 ]; then
    echo "%{F#00B19F}%{F-} $updates"
else
    echo "%{F#BA68C8}%{F-} None"
fi