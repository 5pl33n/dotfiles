#!/bin/bash

sudo chmod +w /etc/sudoers.d/00_spleen
sudo sed -i 's@spleen ALL=(ALL) ALL$spleen ALL=(ALL) NOPASSWD:ALL@g' /etc/sudoers.d/00_spleen

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -S --noconfirm zsh oh-my-zsh-git zsh-theme-powerlevel10k-git hyprland xdg-desktop-portal-gtk xdg-desktop-portal-hyprland wlogout wireplumber waybar tmux swaylock-effects-git swaybg dunst eza htop kitty neovim ripgrep firefox ttf-cascadia-code-nerd qt6-svg qt6-declarative sddm unzip blueman

sudo git clone https://github.com/chrissicool/zsh-256color /usr/share/oh-my-zsh/custom/plugins/zsh-256color
sudo git clone https://github.com/zsh-users/zsh-autosuggestions /usr/share/oh-my-zsh/custom/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting /usr/share/oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp -a ~/5pl33n/dotfiles/. ~/

chsh -s /usr/bin/zsh

sudo wget -O /usr/share/sddm/themes/catppuccin-mocha.zip https://github.com/catppuccin/sddm/releases/download/v1.0.0/catppuccin-mocha.zip
cd /usr/share/sddm/themes/ 
sudo unzip catppuccin-mocha.zip
rm catppuccin-mocha.zip
cd

rm -rf .git

sudo mkdir -p /etc/sddm.conf.d/
sudo mv sddm.conf /etc/sddm.conf.d/mocha.conf

sudo systemctl enable sddm
