#!/bin/sh

if [ "$1" = --clean ]; then
    kdialog --title "Confirmação" --yesno "Deseja limpar a lixeira?"
    if [ "$?" = 0 ]; then
        rm -rf ~/.local/share/Trash/files
        rm -rf ~/.local/share/Trash/info
        mkdir ~/.local/share/Trash/files
        mkdir ~/.local/share/Trash/info
    fi
fi
trash_files=$(find ~/.local/share/Trash/files/ -maxdepth 1 | wc -l)
((trash_files=trash_files-1))
echo "%{F#6D8895}%{F-} $trash_files"