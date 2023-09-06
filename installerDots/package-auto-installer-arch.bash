sudo pacman -Syu
sudo pacman -S git
#install jre and jdk
sudo pacman -S jre-openjdk
sudo pacman -S jdk-openjdk
#installing python and pip
sudo pacman -S python-pip
#installing snap 
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install snapd
#installing vlc
sudo pacman -S vlc
#installing yay 
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
#installing google chrome
#yay google-chrome
#install dart && flutter
yay -S dart
#install flutter
sudo snap install flutter --classic
#installing konsole 
sudo pacman -S konsole
#installing firefox   
sudo pacamn -S firefox
#installing vscode
yay visual-studio-code-bin
#installing kate
sudo pacman -S kate
#installing vim 
sudo pacman -S vim
#install fish shell
sudo pacman -S fish
#install fisher && plugin
sudo pacman -S fisher
fisher install IlanCosman/tide@v5
#installing fira code nerd fonts
yay ttf-fira-code
sudo pacman -S lazygit
fish_vi_key_bindings
echo done!
