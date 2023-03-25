echo script start
cd
echo updating repos
sudo  apt update -y
echo  upgrading
sudo apt upgrade
echo autoremoving
sudo apt autoremove -y
echo installing git
sudo apt install git
echo removing nano and installing vim
sudo apt purge nano -y && sudo apt install vim
echo installing java
sudo apt install default-jre -y && sudo apt install default-jdk  -y
echo installing vlc
sudo apt install vlc -y
sudo apt-get update
#echo install vscode
sudo apt install visual-studio-code -y
echo installing flatpak
sudo apt install flatpak -y
echo installing arduino ide
flatpak install flathub cc.arduino.arduinoide -y
echo installing bitwarden
flatpak install flathub com.bitwarden.desktop -y
echo installing discord
flatpak install flathub com.discordapp.Discord -y
echo installing obisidian
flatpak install flathub md.obsidian.Obsidian -y
echo installing xournalpp
flatpak install flathub com.github.xournalpp.xournalpp -y
echo installing qbittorent
flatpak install flathub org.qbittorrent.qBittorrent
cd
echo updating repos
sudo apt update -y
echo upgrading repos
sudo apt upgrade -y
echo done!
