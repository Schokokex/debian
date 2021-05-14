FROM debian:plusdrivers

RUN apt update && apt install -y gnome-session gnome-themes-extra gnome-system-monitor

RUN apt install -y flatpak gnome-software-plugin-flatpak && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

RUN curl -L https://nixos.org/nix/install | sh
