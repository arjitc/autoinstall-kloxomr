#!/bin/bash
echo Starting Kloxo-MR install...
read -p "press [enter] to start..."
cd /tmp
yum install yum-utils yum-priorities vim-minimal subversion curl zip unzip -y
yum install telnet -y
setenforce 0
echo ‘SELINUX=disabled’ > /etc/selinux/config
wget https://github.com/mustafaramadhan/kloxo/raw/rpms/release/neutral/noarch/mratwork-release-0.0.1-1.noarch.rpm --no-check-certificate
rpm -ivh mratwork-release-0.0.1-1.noarch.rpm
yum clean all
yum update mratwork-* -y
yum install kloxomr -y
sh /script/upcp

read -p "Install done! Reboot VPS once done!"
