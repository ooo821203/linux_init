#!/bin/bash
echo "============== [S] Upgrade - ubuntu =============="

sudo do-release-upgrade

echo "============== [E] Upgrade - ubuntu =============="

echo "============== [S] Remove - snap =============="

sudo systemctl disable snapd.service
sudo systemctl disable snapd.socket
sudo systemctl disable snapd.seeded.service

sudo dpkg --configure -a
sudo apt autoremove --purge -y snapd

sudo rm -rf /var/cache/snapd/
rm -rf ~/snap

sudo apt remove --purge -y \
    thunderbird gnome-games \
    rhythmbox totem deja-dup \
    simple-scan cheese hexchat \
    aisleriot gnome-{mahjongg,mines,sudoku} sgt-*

#sudo rm -rf /run/timeshift

echo "============== [E] Remove - snap =============="


