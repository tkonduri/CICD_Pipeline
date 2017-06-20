#!/bin/bash

sudo apt-get -y install git
cd /home/vagrant
#runuser -l vagrant -c "cd /home/vagrant && git clone https://Tejaswi.Konduri@stash.veritas.com/scm/surf/instant-pipeline.git instant-pipeline"
cd /home/vagrant && git clone https://Tejaswi.Konduri@stash.veritas.com/scm/surf/instant-pipeline.git instant-pipeline
sudo sh /home/vagrant/instant-pipeline/docker-setup.sh
sh /home/vagrant/instant-pipeline/vagrant-script.sh
