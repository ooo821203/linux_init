#!/bin/bash
#sound
~/Desktop/autostart/custom_resize_camera.sh
#~/Desktop/autostart/fdupes_pictures.sh
#~/Desktop/autostart/wallpaper.sh
#python3 ~/Desktop/py/autostart_gnome_extension.py
# cat ~/.key | sudo -S systemctl start bluetooth.service
cat ~/.key | sudo -S ufw default deny outgoing 
cat ~/.key | sudo -S ufw default deny incoming
cat ~/.key | sudo -S ufw enable
#cat ~/.key | sudo usbreset 2563:0526
#wmctrl -s 4
gnome-terminal

#wmctrl -s 3
#nohup nautilus ~ 1> /dev/null 2>&1 &
nohup firefox-esr 1> /dev/null 2>&1 &

#/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=steam com.valvesoftware.Steam steam://open/games

#nohup syncthing --allow-newer-config --no-browser 1> /dev/null 2>&1 &
disown

exit 0
