echo inizia lo script
cd
echo aggiorno i repo
sudo  apt update -y
echo  faccio l upgrade dei repo
sudo apt upgrade -y
echo lancio autoremove
sudo apt autoremove -y
echo installo micro e vim, rimuovo nano
sudo apt purge nano -y && sudo apt install micro -y && sudo apt install vim -y
echo installo java
sudo apt install default-jre -y && sudo apt install default-jdk  -y
echo installo R e cose varie
sudo apt install r-base -y
sudo apt install gdebi-core -y
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1717-amd64.deb
sudo gdebi rstudio-1.4.1717-amd64.deb -y
echo installo vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https -y
sudo apt update -y
sudo apt install code -y
echo installo gnome-boxes -y
sudo apt install gnome-boxes -y
echo installo okular
sudo apt install okular -y
echo installo sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y
echo installo chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
echo installo vlc
sudo apt install vlc -y
echo installo discord
mkdir .Discord
cd .Discord
wget -O discord-0.0.1.deb https://discordapp.com/api/download?platform=linux&format=deb
sudo dpkg -i discord-0.0.1.deb -y
echo installo flatpak
sudo apt install flatpak -y
echo installo arduino ide
flatpak install flathub cc.arduino.arduinoide -y
echo installo bitwarden
flatpak install flathub com.bitwarden.desktop -y
echo installo obisidian 
flatpak install flathub md.obsidian.Obsidian -y
echo installo xournalpp
flatpak install flathub com.github.xournalpp.xournalpp -y
echo install qbittorent
flatpak install flathub org.qbittorrent.qBittorrent -y
echo installo git
sudo apt install git 
echo installo le estensioni di vim
mkdir -p ~/.vim/pack/vendor/start
cd ~/.vim/pack/vendor/start
#nerdTree
git clone --depth 1 \https://github.com/preservim/nerdtree.git \
	~/.vim/pack/vendor/start/nerdtree
#vim-airline
git clone https://github.com/vim-airline/vim-airline
#syntastic
git clone https://github.com/vim-syntastic/syntastic
cd
echo aggiorno i repo
sudo apt update -y
echo faccio l upgrade dei repo
sudo apt upgrade -y
echo ho finito di installare tutto
