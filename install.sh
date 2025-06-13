#!/usr/bin/env bash

mkdir -p ~/screenshots
mkdir -p ~/wallpapers

rm ~/.bashrc
cd ~/dotfiles
stow .
rm ~/install.sh

yay -S vlc tumbler pwvucontrol wev inkscape gimp thunar-volman ttf-noto-nerd ttf-terminus-nerd libreoffice-fresh speedtest-cli thunar thunar-archive-plugin thunar-media-tags-plugin thunar-shares-plugin thunar-vcs-plugin ttf-cascadia-mono-nerd ttf-dejavu ttf-dejavu-nerd ttf-ms-fonts ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono hyprland hyprpicker hypridle hyprlock hyprpaper hyprpolkitagent hyprshot hyprsunset inkscape mirage ttf-font-awesome vscodium-bin wavemon yt-dlp zen-browser-bin uwsm alacritty espanso-wayland cava fastfetch waybar-cava swaync wofi starship awesome-terminal-fonts blueman btop capitaine-cursors cliphist bluez-obex 

systemctl --user start espanso
systemctl --user start waybar
systemctl --user start hyprsunset
systemctl --user start swaync
systemctl --user start hyprpaper
systemctl --user start hyprpolkitagent
systemctl --user start hypridle
systemctl --user start
systemctl --user start