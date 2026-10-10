iwctl
device list   /   device wlan0 set-property Powered on
nmcli
station wlan0 get-networks
station wlan0 connect [wifi name]
[iwd] exit
ping -C 5 google.com
pacman -Sy
pacman -S archlinux-keyring
pacman-key --init
pacman-key --populate archlinux
pacman -S archinstall
lsblk
fdisk -l
gdisk /dev/sda

---------------------------

# Automatic Installation with archinstall
archinstall
sudo pacman -Syu 
sudo pacman -S mesa wayland hyprland hypaper ranger kitty dolphin blender gimp krita steam keepass htop neovim vim jdk waybar rofi jdk-openjdk gcc matrix sddm git code wget fastfetch curl firefox vlc spectacle power-profiles-daemon cargo clany tmux gwenview base-devel android-tools ntfs-3g linux-headers exfatprogs  # Install

Enable multilib
Net config --->Network-Manager(default)
kernel : linux
swap: yes
partitions --> default recommended

exit
shutdown now

------------------------------------------
# Manual Installation (My favorite)

















` sudo pacman -S wayland hyprland cmake yay paru wget dunst efibootmgr kitty hyprlock dolphin keepass htop neovim vim waybar rofi gcc matrix sddm git wget fastfetch curl firefox vlc spectacle power-profiles-daemon cargo clany tmux gwenview base-devel android-tools ntfs-3g linux-headers exfatprogs hyprsunset`

` sudo pacman -S brightnessctl audacity blender krita okular gimp steam`

` sudo pacman -S wifite macchanger exiftool npm gammastep hashcat yazi`

` sudo pacman -S airgeddon btop cava flatpak keepassxc llama-cpp luarocks noctalia app.zen_browser.zen`

` sudo pacman -S zsh zsh-autosuggestions `

` sudo pacman -S audit lynis tetragon tracee rkhunter ufw aide exiftool `

` flatpak install flathub app.zen_browser.zen `

` paru -S noctalia mpvpaper wlogout  `

` git clone https://aur.archlinux.org/paru.git `

` pipx install sentinel-linux `

` yay -S ani-cli nerd-fonts-hack nerd-font-jetbrains-mono lua libcava mullvad-vpn npm  `

` git clone https://aur.archlinux.org/yay.git `

sddm:   https://github.com/Keyitdev/sddm-astronaut-theme
