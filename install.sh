#!/bin/bash
echo Starting Kloxo-MR install...
read -p "press [enter] to start..."
cd /
yum update -y
yum install yum-utils yum-priorities vim-minimal subversion curl zip unzip -y
yum install telnet -y
setenforce 0
echo ‘SELINUX=disabled’ > /etc/selinux/config
cd /etc/yum.repos.d/
rm -rf /tmp/kloxo; mkdir /tmp/kloxo ; cd /tmp/kloxo; 
rm -rf kloxo-mr.repo
wget https://github.com/mustafaramadhan/kloxo/raw/dev/kloxo/install/kloxo-mr-dev.sh --no-check-certificate
sh ./kloxo-mr-dev.sh
read -p "Install done! Reboot VPS once done!"
