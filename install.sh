#!/bin/bash


pacman -Syyu

pacman -S --needed - < pkglist.txt

