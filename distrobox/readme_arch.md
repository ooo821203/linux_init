## Prepare

### gedit ~/.bashrc
```
alias dbox="distrobox"
```

## Install 

### Install distrobox
```
sudo apt install distrobox

dbox list

dbox create arch -i quay.io/toolbx-images/archlinux-toolbox

dbox enter arch
```

## Install Package (dbox enter 후)

### yay
```
cd ~/git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### neofetch
```
sudo pacman -S neofetch
```

### ani-cli
```
yay -S ani-cli
```

## jerry
```
sudo curl -sL github.com/justchokingaround/jerry/raw/main/jerry.sh -o ./jerry && sudo chmod +x /usr/local/bin/jerry
```

## dra-cla
```
sudo curl -sL github.com/CoolnsX/dra-cla/raw/main/dra-cla -o ./dra-cla && sudo chmod +x /usr/local/bin/dra-cla
```


## Export
### .desktop to host 
```
distrobox-export --bin /usr/sbin/ani-cli --export-path ~/.local/bin

distrobox-export --bin /usr/local/bin/jerry --export-path ~/.local/bin
distrobox-export --bin /usr/local/bin/dra-cla --export-path ~/.local/bin
```

## remove
```
distrobox-export --bin /usr/sbin/ani-cli --export-path ~/.local/bin --delete
```