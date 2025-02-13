#!/usr/bin/env bash

mkdir -p ~/.config/fish
mkdir -p ~/.config/fcitx5/conf

rm -rf ~/.config/nvim
rm -rf ~/.config/i3
rm -rf ~/.config/polybar
rm -rf ~/.config/rofi
rm -rf ~/.config/alacritty
rm -rf ~/.config/picom
rm -rf ~/.config/dunst
rm -rf ~/.config/Thunar
rm -rf ~/.config/libskk
rm -rf ~/.config/hypr
rm -rf ~/.config/niri
rm -rf ~/.config/waybar

rm -rf ~/.bin
rm -rf ~/.wallpaper



ln -nfs ~/dotfiles/config/nvim ~/.config/nvim
ln -nfs ~/dotfiles/config/i3 ~/.config/i3
ln -nfs ~/dotfiles/config/polybar ~/.config/polybar
ln -nfs ~/dotfiles/config/rofi ~/.config/rofi
ln -nfs ~/dotfiles/config/alacritty ~/.config/alacritty
ln -nfs ~/dotfiles/config/picom ~/.config/picom
ln -nfs ~/dotfiles/config/dunst ~/.config/dunst
ln -nfs ~/dotfiles/config/Thunar ~/.config/Thunar
ln -nfs ~/dotfiles/config/libskk ~/.config/libskk
ln -nfs ~/dotfiles/config/hypr ~/.config/hypr
ln -nfs ~/dotfiles/config/niri ~/.config/niri
ln -nfs ~/dotfiles/config/waybar ~/.config/waybar

ln -nfs ~/dotfiles/config/fish/config.fish ~/.config/fish/config.fish
ln -nfs ~/dotfiles/config/fish/fish_plugins ~/.config/fish/fish_plugins
ln -nfs ~/dotfiles/config/fcitx5/conf/classicui.conf ~/.config/fcitx5/conf/classicui.conf
ln -nfs ~/dotfiles/config/libinput-gestures.conf ~/.config/libinput-gestures.conf

ln -nfs ~/dotfiles/bin ~/.bin
ln -nfs ~/dotfiles/wallpaper ~/.wallpaper
