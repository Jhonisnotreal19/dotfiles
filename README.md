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

lsblk ----> make sure you have enough space disk (500GB)
gdisk /dev/nvme0n1p1

press on ----> '?' for help info (in case of past partitions, delete it)

press -----> n for aggregate partitions:

EFI (the one you already started): Enter for first sector, +1G for last sector, code ef00.
Swap: n, Enter (2), Enter, +8G (adjust based on your RAM), code 8200.
Root: n, Enter (3), Enter, +50G, code 8300.
Home: n, Enter (4), Enter, Enter (use all remaining space), code 8300.

press ----> w & x to save & exit

mkfs.fat -F32 /dev/nvme0n1p1
mkswap /dev/nvme0n1p2
mkfs.ext4 /dev/nvme0n1p3
mkfs.ext4 /dev/nvme0n1p4
mount /dev/nvme0n1p3 /mnt
mount --mkdir /dev/nvme0n1p1 /mnt/boot
mount --mkdir /dev/nvme0n1p4 /mnt/home
swapon /dev/nvme0n1p2











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
