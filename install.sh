#!/bin/bash

sudo -Syu
sudo cp pacman.conf /etc/

sudo pacman -Syyu
sudo pacman -S --needed - < pkglist.txt

mkdir  ~/Documents ~/Pictures ~/Downloads ~/Desktop ~/Videos  ~/.xmonad

sudo systemctl enable sddm.service
sudo systemctl enable sshd
pulseaudio --start

cp Space.png ~/Pictures/Space.png
cp -r .config ~/.config
cp -r .xmonad ~/.xmonad
chsh -s /bin/fish

cd ~/repos
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si


git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
cd ~/.emacs.d/bin
./doom install


xmonad --recompile
xmonad --restart
