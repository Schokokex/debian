echo deb http://deb.debian.org/debian bullseye main contrib non-free > /etc/apt/sources.list

echo debian > /etc/hostname

apt update
apt install --no-install-recommends linux-image-amd64 systemd-sys nano command-not-found bash-completion network-manager gnome-session gnome-tweaks gnome-terminal gnome-themes-extra 

echo deb http://deb.debian.org/debian bullseye main > /etc/apt/sources.list
echo deb-src http://deb.debian.org/debian bullseye main >> /etc/apt/sources.list
echo deb http://security.debian.org/ bullseye-security main >> /etc/apt/sources.list
echo deb-src http://security.debian.org/ bullseye-security main >> /etc/apt/sources.list
apt full-upgrade
apt clean
