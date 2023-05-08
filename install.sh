#!/bin/bash

echo "Installing required packages..."
sudo pacman -Syy bspwm sxhkd alacritty zsh polybar rofi picom nitrogen vim neovim xorg-xrandr python

echo "Installing required fonts..."
sudo pacman -Syy ttf-font-awesome otf-overpass

echo "Installing config..."
cd ~
git clone https://github.com/ImBlur/Dotfiles.git
mv ./Dotfiles/.config/ ~
mv ./Dotfiles/.xinitrc ~

echo "Install oh-my-zsh and then move '~/Dotfiles/.zshrc' to '~'"
echo "After this you can type 'rm -rf ~/Dotfiles'"
