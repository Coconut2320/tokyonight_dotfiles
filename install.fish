read -l -P "Continue? [y/N] " -n 1 confirm
if test "$confirm" = "y" -o "$confirm" = "Y"
    echo "Starting..."
else
    echo "Cancelled."
end
sudo pacman -S --needed - < pkglist.txt
sudo systemctl enable iwd
sudo systemctl enable NetworkManager
sudo systemctl enable sddm
git clone https://aur.archlinux.org/yay.git && cd yay
sudo -v
makepkg -si
cd ..
rm -rf yay
sudo -v
yay -S wlogout visual-studio-code-bin
cp -r .config ~/.config
cp -r .vscode ~/.vscode
clear
echo "Install completed. Waiting 5 seconds then rebooting."
sleep 5
sudo reboot
