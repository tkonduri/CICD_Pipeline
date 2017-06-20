#!/bin/sh

set -e
set -x

date | sudo tee /etc/vagrant_box_build_time

mkdir -p /home/vagrant/.ssh
curl -fsSLo /home/vagrant/.ssh/authorized_keys https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
