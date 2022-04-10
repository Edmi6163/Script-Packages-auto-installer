cp -R .config/* ~/.config/
cp .profile ~/.profile
cp .gtkrc-2.0 ~/.gtkrc-2.0
chmod -R +x ~/.config/sway/scripts
chmod -R +x ~/.config/waybar/scripts
sudo pacman -Syu --needed --noconfirm - < packages-repository.txt
dbus-launch dconf load / < xed.dconfp -R .config/* ~/.config/
cp .profile ~/.profile
cp .gtkrc-2.0 ~/.gtkrc-2.0
chmod -R +x ~/.config/sway/scripts
chmod -R +x ~/.config/waybar/scripts
sudo pacman -Syu --needed --noconfirm - < packages-repository.txt
dbus-launch dconf load / < xed.dconf
