#!/bin/bash

echo "Installing required packages..."
sudo pacman -Syy bspwm sxhkd alacritty zsh polybar dmenu picom nitrogen vim neovim

echo "Installing required fonts..."
sudo pacman -Syy ttf-font-awesome

echo "Installing config..."
cd ~
git clone https://github.com/ImBlur/Dotfiles.git
mv ./Dotfiles/.config ~
rm -rf ./Dotfiles
