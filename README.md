# tokyonight_dotfiles
Arch Linux Tokyo Night theme dotfiles.

Thank you to https://github.com/0xsch1zo/Kvantum-Tokyo-Night for the kvantum theme.
Thank you to https://github.com/w8ste/Tokyonight-rofi-theme for the rofi theme. 
Thank you do Garuda Linux Mokka, Omarchy, and PeppermintOS for wallpapers.

Note: These dotfiles require fish shell as default. Also, these dotfiles work on Arch (btw) but may or may not work on other distros.

# Installation Instrustions
# This needs to be done on a fresh install of your distro. WARNING: THIS WILL OVERRIDE YOUR ~/.config FOLDER!
Scroll to manual section if you are not using Arch (btw) or an Arch based distro.

1. Run this to install git and fish and set your default shell to fish:
```bash
sudo pacman -S --needed git fish
chsh *your username* /usr/bin/fish
```
2. Restart your computer.

3. Clone the repo:
```fish
cd ~/Downloads
git clone https://github.com/Coconut2320/tokyonight_dotfiles.git && cd tokyonight_dotfiles
```
4. Run the installer:
```fish
./install.fish
```

## Manual
This is the only working method on distros that are not Arch or Arch based.

1. Install fish and git.
2. Change your terminal shell to fish.
3. Restart your computer.
4. Run this:
```fish
cd ~/Downloads
git clone https://github.com/Coconut2320/tokyonight_dotfiles.git && cd tokyonight_dotfiles
```
5. Install everything in install.txt.
6. Run this:
```fish
cd ~/Downloads/tokyonight_dotfiles
cp -r .config/* ~/.config
