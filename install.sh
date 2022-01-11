#!/bin/bash


#sudo pacman -Syyu
sudo pacman -S --needed - < pkglist.txt

mkdir  ~/Documents ~/Pictures ~/Downloads ~/Desktop ~/Videos ~/.config ~/.config/alacritty ~/.xmonad

cp Space.png ~/Pictures/Space.png

cp -r polybar ~/.config/

cp -r xmonadfiles/scripts ~/.xmonad/scripts
cp xmonadfiles/xmonad.hs ~/.xmonad/xmonad.hs

cp alacritty ~/.config/alacritty/alacritty.yml

cp -r fish ~/.config/
chsh -s /bin/fish

cd ~/repos
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
