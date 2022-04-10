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
#installing paru
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
#installing google chrome
yay google-chrome
#install dart && flutter
yay dart
#install flutter
sudo snap install flutter --classic
#installing alacritty
sudo pacman -S alacritty
#removing firefox and installing firefox developer edition
sudo pacamn -R firefox
yay firefox-developer-edition
#installing vscode
yay visual-studio-code-bin
#installing sublime text
yay sublime-text-4
#installing neovim 
sudo pacman -S neovim
#install fish shell
sudo pacman -S fish
#install fisher && plugin
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install IlanCosman/tide@v5
#installing tmux && plugin
sudo pacman -S tmux 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
#installing gitui 
sudo pacman -S gitui
echo done!
