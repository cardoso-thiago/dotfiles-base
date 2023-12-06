#!/bin/sh
updates=$(checkupdates | wc -l)

if [ $updates -le 0 ]; then
  notify-send -i /usr/share/pixmaps/archlinux-logo.png "Não foram encontradas atualizações." --app-name "Update"
  exit 0
else
    xdotool key ctrl+0x003b
    xdotool type "yay -Syu --devel --timeupdate"
    xdotool key Return
    notify-send -i /usr/share/pixmaps/archlinux-logo.png "Comando de atualização enviado para o Hyper" --app-name "Update"
fi
exit 0