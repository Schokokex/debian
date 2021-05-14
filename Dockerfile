FROM debian:plusdrivers

RUN apt update && apt install -y gnome-session gnome-themes-extra

RUN apt install -y flatpak gnome-software-plugin-flatpak && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
