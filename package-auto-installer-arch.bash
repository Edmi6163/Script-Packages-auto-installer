sudo pacman -Syu
sudo pacman -S git
#install jre and jdk
sudo pacman -S jre-openjdk
sudo pacman -S jdk-openjdk
#installing python and pip
sudo pacman -S python-pip
#installing paru
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd
#installing vscode
paru -S visual-studio-code-bin
#installing google chrome
paru google-chrome
#installing alacritty
sudo pacman -S alacritty
#removing firefox and installing firefox developer edition
sudo pacamn -R firefox
paru firefox-developer-edition
#installing tmux
sudo pacaman -S tmux
#installing kde tiling window manager
paru kwin-bismuth
#installing codeart (change nvim look)
git clone https://github.com/artart222/CodeArt
cd CodeArt
sudo pip3 install distro
python3 install.py
#lauch :PackerInstall && :PackerCompile && :TSInstall <language> &&  :LspInstall <language>
echo done!