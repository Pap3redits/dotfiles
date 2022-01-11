#!/bin/bash


#sudo pacman -Syyu
sudo pacman -S --needed - < pkglist.txt

mkdir ~/Documents ~/Pictures ~/Downloads ~/Desktop ~/Videos ~/.config/alacritty

cp Space.png ~/Pictures/Space.png

cp -r polybar ~.config/polybar

cp -r xmonadfiles/scripts ~/.xmonad/scripts
cp xmonadfiles/xmonad.hs ~/.xmonad/xmonad.hs

cp alacritty ~/.config/alacritty/alacritty.yml
