read -l -P "Continue with installation? [y/N] " -n 1 confirm
if string match -qi "y" "$confirm"
    echo -e "\nStarting..."
else
    echo -e "\nCancelled."
    exit 1
end

sudo -v

# 1. Official Repo Packages
sudo pacman -S --needed - < pkglist.txt

# 2. Services
sudo systemctl enable iwd
sudo systemctl enable NetworkManager
sudo systemctl enable sddm

# 3. AUR (Yay) Installation
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
# Prime sudo again right before makepkg if needed
sudo -v
makepkg -si --noconfirm
cd -

# 4. AUR Packages
yay -S --needed wlogout visual-studio-code-bin

# 5. Dotfiles Deployment
cp -r .config ~/
cp -r .vscode ~/
mkdir -p "$HOME/Pictures/Hyprland_Wallpapers"
cp -r Wallpapers/* "$HOME/Pictures/Hyprland_Wallpapers/"

clear
echo "Install completed. Waiting 5 seconds then rebooting."
sleep 5
sudo reboot
