#!/bin/bash

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -S zsh oh-my-zsh-git zsh-theme-powerlevel10k-git hyprland xdg-desktop-portal-gtk xdg-desktop-portal-hyprland wlogout wireplumber waybar tmux swaylock-effects-git swaybg dunst eza htop kitty neovim ripgrep firefox ttf-cascadia-mono-nerd --noconfirm

sudo git clone https://github.com/chrissicool/zsh-256color /usr/share/oh-my-zsh/custom/plugins/zsh-256color
sudo git clone https://github.com/zsh-users/zsh-autosuggestions /usr/share/oh-my-zsh/custom/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting /usr/share/oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp -a /home/spleen/5pl33n/dotfiles/. /home/spleen/

chsh /usr/bin/zsh
