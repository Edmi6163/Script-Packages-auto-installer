sudo pacman -Syu
sudo pacman -S git
#install jre and jdk
sudo pacman -S jre-openjdk
sudo pacman -S jdk-openjdk
#installing python and pip
sudo pacman -S python-pip
#installing vlc
sudo pacman -S vlc
#installing paru
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd
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
#installing vim 
sudo pacman -S vim
#install fish shell
sudo pacman -S fish
#install fisher 
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

echo done!
