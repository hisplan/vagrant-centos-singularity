#!/bin/bash

sudo yum update -y
sudo yum install -y git autoconf automake libtool 

# install sigunlarity
git clone https://github.com/gmkurtzer/singularity.git
cd singularity
./autogen.sh
./configure --prefix=/usr/local
make
sudo make install

# update /etc/sudoers to include /usr/bin/local in secure_path.
# this will allow `sudo singularity`.
sudo sed -i 's/Defaults    secure_path = \/sbin:\/bin:\/usr\/sbin:\/usr\/bin/Defaults    secure_path = \/sbin:\/bin:\/usr\/sbin:\/usr\/bin:\/usr\/local\/bin/g' /etc/sudoers

# configure in a way that you can ssh into the box with a plain old id/password
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo /etc/init.d/sshd restart

