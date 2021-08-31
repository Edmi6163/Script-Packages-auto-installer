echo inizia lo script
cd
echo aggiorno i repo
sudo  apt update -y
echo  faccio l upgrade dei repo
sudo apt upgrade
echo lancio autoremove
sudo apt autoremove -y
echo installo micro e rimuvo nano
sudo apt purge nano -y && sudo apt install micro -y
echo installo java
sudo apt install default-jre && sudo apt install default-jdk  -y
echo installo vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
echo installo gnome-boxes
sudo apt install gnome-boxes -y
echo installo vlc
sudo apt install vlc -y
echo installo chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo installo flatpak
sudo apt install flatpak -y
echo installo arduino ide
flatpak install flathub cc.arduino.arduinoide -y
echo installo bitwarden
flatpak install flathub com.bitwarden.desktop -y
echo installo discord
flatpak install flathub com.discordapp.Discord -y
echo installo obisidian 
flatpak install flathub md.obsidian.Obsidian -y
echo installo okular
flatpak install flathub org.kde.okular -y
echo installo sublime text
flatpak install flathub com.sublimetext.three -y
echo installo xournalpp
flatpak install flathub com.github.xournalpp.xournalpp -y
echo install qbittorent
flatpak install flathub org.qbittorrent.qBittorrent
echo installo android-studio
flatpak install flathub com.google.AndroidStudio
echo aggiorno i repo
sudo apt update -y
echo faccio l upgrade dei repo
sudo apt upgrade -y
echo ho finito di installare tutto
