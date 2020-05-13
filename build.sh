#show all devices to be sure of witch device is your usb key, for example, we assure that it's sdb
lsblk -S

#umount the usb key
umount /dev/sdb?*

#flash the iso to the usb key
sudo dd if=/path/to/image.iso of=/dev/sdb bs=4M status=progress conv=fdatasync
