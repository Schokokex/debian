# checklist for creating debootstrap

good rule: making a system ready to use

from https://willhaley.com/blog/custom-debian-live-environment/

prepare: 
```
sudo su


apt install debootstrap 

```
create empty snapshot in subvolume 5
and mount empty snapshot
```
export btr=/dev/sda2
export mountpoint=$HOME/asd

mkdir $mountpoint || exit
mount $btr $mountpoint
cd $mountpoint
btrfs subvolume set-default 5 .
cd /
umount $mountpoint
mount $btr $mountpoint
cd $mountpoint
btrfs subvolume delete @debian
btrfs subvolume create @debian
cd /
umount $mountpoint
mount $btr -o subvol=@debian $mountpoint
```

create minimal debian without kernel
`debootstrap --variant=minbase bullseye $mountpoint http://ftp.dk.debian.org/debian`

`chroot $mountpoint /bin/bash`

on my nix system i had to set the PATH variable within chroot
`PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/X11:/usr/games

post apt

`copy fstab`
create proc entry in fstab for gnome
`apt install --no-install-recommends flatpak`

