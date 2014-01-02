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
wget https://github.com/mustafaramadhan/kloxo/raw/rpms/release/neutral/noarch/mratwork-release-0.0.1-1.noarch.rpm --no-check-certificate
rpm -ivh mratwork-release-0.0.1-1.noarch.rpm
yum update mratwork-release
yum install kloxomr -y
sh /script/upcp
read -p "Install done! Reboot VPS once done!"
