#! /bin/bash
ALL=$(yay -Qu --devel --timeupdate | sed 's/\x1b\[[0-9;]*m//g' | sed 's/->//g' | sed 's/^/TRUE /g')
if [[ -z "${ALL// }" ]]
then
  notify-send -i /usr/share/pixmaps/archlinux-logo.png "Não foram encontradas atualizações."
  exit 0
else
    xdotool key ctrl+0x003b
    xdotool type "yay -Syu --devel --timeupdate"
    xdotool key Return
    notify-send -i /usr/share/pixmaps/archlinux-logo.png "Comando de atualização enviado para o Hyper"
fi
exit 0