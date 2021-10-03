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
echo installo R e cose varie
sudo apt install r-base
sudo apt install gdebi-core 
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1717-amd64.deb
sudo gdebi rstudio-1.4.1717-amd64.deb
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
echo installo sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
echo installo vlc
sudo apt install vlc -y
echo installo discord
mkdir .Discord
cd .Discord
wget -O discord-0.0.1.deb https://discordapp.com/api/download?platform=linux&format=deb
sudo dpkg -i discord-0.0.1.deb
echo installo flatpak
sudo apt install flatpak -y
echo installo arduino ide
flatpak install flathub cc.arduino.arduinoide -y
echo installo bitwarden
flatpak install flathub com.bitwarden.desktop -y
echo installo obisidian 
flatpak install flathub md.obsidian.Obsidian -y
echo installo okular
flatpak install flathub org.kde.okular -y
echo installo xournalpp
flatpak install flathub com.github.xournalpp.xournalpp -y
echo install qbittorent
flatpak install flathub org.qbittorrent.qBittorrent
echo aggiorno i repo
sudo apt update -y
echo faccio l upgrade dei repo
sudo apt upgrade -y
echo ho finito di installare tutto
