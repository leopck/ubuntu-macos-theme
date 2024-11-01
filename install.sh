#!/bin/bash

# 1. Update your system
sudo apt update && sudo apt dist-upgrade -y

# 2. Install apps and dependencies
sudo apt install -y curl rsync git gdebi nautilus-admin nautilus-extension-gnome-terminal sassc gnome-tweaks gnome-shell-extension-manager

# 3. Download necessary files
curl -L -o $HOME/Downloads/cava-config.zip "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1716957132/cava-config.zip?response-content-disposition=attachment%3B%2520cava-config.zip&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20241011%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241011T104836Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=0f407b40e31b2d02da319246aa32a90c74e0a020491df32b874324c313845754"
curl -L -o $HOME/Downloads/fonts.zip "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1716957132/fonts.zip?response-content-disposition=attachment%3B%2520fonts.zip&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20241011%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241011T104931Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=4371391237fc2ac8b46911c2fb16720310132c03bd0ce59eb6cbd91ce76fd31b"
curl -L -o $HOME/Downloads/gnome-extensions.zip "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1716957132/gnome-extensions.zip?response-content-disposition=attachment%3B%2520gnome-extensions.zip&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20241011%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241011T105018Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=e62694944126d1035e46e9673ea3f4e251337d9f6412b8dbd7dc381d306694d7"
curl -L -o $HOME/Downloads/neofetch-config.zip "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1716957132/neofetch-config.zip?response-content-disposition=attachment%3B%2520neofetch-config.zip&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20241011%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241011T105048Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=d9b59e39702ebb1dd0aa7bd6d8e654a7fb0256d126c452f37cff355b45b084d6" 
curl -L -o $HOME/Downloads/ubuntu2404-gnome46-macos-config.zip "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1716957132/ubuntu2404-gnome46-macos-config.zip?response-content-disposition=attachment%3B%2520ubuntu2404-gnome46-macos-config.zip&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20241011%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241011T105118Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=8adde47416a1af556e4fff08fce5f40156b47c9581fab564e2e2687ea70ee244" 
curl -L -o $HOME/Downloads/zsh-config.zip "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1716957132/zsh-config.zip?response-content-disposition=attachment%3B%2520zsh-config.zip&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20241011%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241011T105151Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=7decb6babcfe760ed4a300ab65a8920d1a5e54d58e08419a0c782b98174a97b6" 
curl -L -o $HOME/Downloads/plymouth-theme.zip "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1716957132/plymouth-theme.zip?response-content-disposition=attachment%3B%2520plymouth-theme.zip&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20241011%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241011T105222Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=49a0b29c9ec48ab1fff8901684a5e9d70cd836eeb0c001705c13ec849f5d274c" 
curl -L -o $HOME/Downloads/wallpapers.zip "https://ocs-dl.fra1.cdn.digitaloceanspaces.com/data/files/1716957132/wallpapers.zip?response-content-disposition=attachment%3B%2520wallpapers.zip&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=RWJAQUNCHT7V2NCLZ2AL%2F20241011%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241011T105255Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=8d723c4fade2bbd548362af5ac682b4412b67b910cb62af0e98d590faa3fd071"

# 4. Install GNOME Extensions
unzip -o $HOME/Downloads/gnome-extensions.zip -d $HOME/.local/share/gnome-shell/

# 5. Install WhiteSur GTK Theme
cd $HOME/Downloads
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme/
./install.sh -l -c Light -c Dark -s 180 -m
ln -sf "$HOME/.config/gtk-4.0/gtk-Light.css" "$HOME/.config/gtk-4.0/gtk.css"  # or gtk-Dark.css
./tweaks.sh -d

# 6. Install Icon Theme
cd $HOME/Downloads
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme/
./install.sh -a -b

# 7. Install Cursors Theme
cd $HOME/Downloads
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cd WhiteSur-cursors/
./install.sh

# 8. Install Fonts and Wallpapers
unzip -o $HOME/Downloads/fonts.zip -d $HOME/.local/share/
sudo unzip -o $HOME/Downloads/wallpapers.zip -d /usr/share/backgrounds/

# 9. Install Cava
sudo apt install cava -y
unzip -o $HOME/Downloads/cava-config.zip -d $HOME/.config/

# 10. Install Neofetch
sudo apt install neofetch -y
unzip -o $HOME/Downloads/neofetch-config.zip -d $HOME/.config/

# 11. Install ZSH, Oh-my-ZSH, and Powerlevel10k
sudo apt install -y zsh git curl util-linux
sudo chsh -s $(which zsh) $(whoami)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/' /home/phoongst/.config/zsh/.zshrc
unzip -o $HOME/Downloads/zsh-config.zip -d $HOME

# 12. Enable Flatpak and AppImages Support
sudo apt install -y gnome-software gnome-software-plugin-flatpak flatpak libfuse2
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub io.bassi.Amberol -y
sudo flatpak install flathub net.agalwood.Motrix -y
sudo flatpak install flathub com.rafaelmardojai.Blanket -y
sudo flatpak install flathub com.github.KRTirtho.Spotube -y
sudo flatpak install flathub com.mattjakeman.ExtensionManager -y
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=$HOME/.local/share/icons
sudo flatpak override --filesystem=xdg-config/gtk-4.0

# 13. Install GNOME Apps
sudo apt install -y gnome-weather gnome-maps gnome-audio gnome-calendar gnome-clocks gnome-connections gnome-console gnome-contacts gnome-music vlc gnome-shell-pomodoro

# 14. Install macOS Plymouth Theme
sudo apt install -y plymouth
sudo unzip -o $HOME/Downloads/plymouth-theme.zip -d /usr/share/plymouth/themes
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/macOS/macOS.plymouth 100
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u

# 15. Apply GNOME Configuration
unzip $HOME/Downloads/ubuntu2404-gnome46-macos-config.zip -d $HOME/Downloads/
dconf load / < $HOME/Downloads/gnome46-macos-ubuntu2404.conf

## 16. Remove Snap Apps and Service
#cp -afv $HOME/snap $HOME/Downloads/
#sudo snap remove --purge firefox snap-store gnome-42-2204 gtk-common-themes snapd-desktop-integration firmware-updater core22 bare snapd
#sudo apt autoremove --remove snapd -y
#sudo rm -rf /var/cache/snapd/
#echo "Package: snapd
#Pin: release a=*
#Pin-Priority: -10" | sudo tee /etc/apt/preferences.d/nosnap.pref
#sudo apt update

# 17. Install Firefox Web Browser (DEB) from Mozilla PPA
#sudo add-apt-repository -y ppa:mozillateam/ppa && sudo apt update
#echo 'APT::Key::Assert-Pubkey-Algo "1";' | sudo tee /etc/apt/apt.conf.d/99weakkey-warning
#sudo apt update
#sudo apt install -y -t 'o=LP-PPA-mozillateam' firefox
#echo "Unattended-Upgrade::Allowed-Origins:: \"LP-PPA-mozillateam:$distro_codename\";" | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox
#echo 'Package: firefox*
#Pin: release o=LP-PPA-mozillateam
#Pin-Priority: 501' | sudo tee /etc/apt/preferences.d/mozillateamppa
#sudo apt update
#mkdir -p $HOME/.mozilla/firefox/
#cp -af $HOME/Downloads/snap/firefox/common/.mozilla/firefox/* $HOME/.mozilla/firefox/
#firefox -p

# 18. Install WhiteSur Firefox Theme
cd $HOME/Downloads
git clone https://github.com/vinceliuice/WhiteSur-firefox-theme.git
cd WhiteSur-firefox-theme/
./install.sh -m

# Finished
echo "Installation and setup completed!"

