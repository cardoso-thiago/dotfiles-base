#!/bin/sh
# Get list and count of updates
if (ping -c 1 archlinux.org || ping -c 1 google.com || ping -c 1 bitbucket.org || ping -c 1 github.com || ping -c 1 sourceforge.net) &>/dev/null; then
if ! updates=$(yay -Qu --devel --timeupdate | wc -l); then
    updates=0
fi

# Print the available updates if more than 0
if [ "$updates" -gt 0 ]; then
    echo "%{F#FDD835}%{F-} $updates"
else
    echo "%{F#FDD835}%{F-} None"
fi
else 
    echo "%{F#FDD835}%{F-} Offline"
fi