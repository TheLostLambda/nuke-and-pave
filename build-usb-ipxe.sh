#!/bin/sh
# !!! DOCKERISE ME !!!
git clone git://git.ipxe.org/ipxe.git
cd ipxe/src
make bin-x86_64-efi/ipxe.usb
echo "Flashing to $1"
sudo dd if=bin-x86_64-efi/ipxe.usb of="$1"
