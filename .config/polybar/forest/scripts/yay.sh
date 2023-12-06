#!/bin/sh
updates=$(checkupdates | wc -l)

if [ $updates -gt 0 ]; then
    echo "%{F#00B19F}%{F-} $updates"
else
    echo "%{F#BA68C8}%{F-} None"
fi