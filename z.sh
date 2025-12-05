#!/bin/bash

cd
rm -rf ~/.config/hypr ~/.config/waybar ~/.config/wofi ~/.config/kitty ~/.config/mako
rm -rf mkhmtdots
git clone https://github.com/mkhmtolzhas/mkhmtdots
cd mkhmtdots
sudo dnf install -y hyprland kitty wofi waybar mako zsh hyprpaper
pip install pywal16
cp -r .config/* ~/.config/
cd ~/.config/waybar
sed -i 's/mkhmtcore/tess/g' style.css
cd ~/.config/wofi
sed -i 's/mkhmtcore/tess/g' style.css
echo "Done! Reboot now with: sudo reboot"
