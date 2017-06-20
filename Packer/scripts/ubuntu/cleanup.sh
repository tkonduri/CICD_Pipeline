#!/bin/bash

set -e
set -x

export DEBIAN_FRONTEND=noninteractive

echo "Delete unneeded files."
sudo rm -f /home/vagrant/*.sh

echo "Cleaning up dhcp leases"
sudo rm /var/lib/dhcp/*

sudo apt-get -y autoremove
sudo apt-get -y clean

sync