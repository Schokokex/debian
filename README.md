# checklist for creating debootstrap

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
`debootstrap --variant=minbase bullseye $mountpoint http://ftp.us.debian.org/debian`

