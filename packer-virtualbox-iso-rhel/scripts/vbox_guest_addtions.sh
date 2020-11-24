#!/bin/bash -x

set -e

#=====================================================
# Variables
#=====================================================

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)

#=====================================================
# Main
#=====================================================

mount -o loop /tmp/VBoxGuestAdditions_${VBOX_VERSION}.iso /mnt

bash /mnt/VBoxLinuxAdditions.run

umount /mnt

rm -rf /tmp/VBoxGuestAdditions_${VBOX_VERSION}.iso
