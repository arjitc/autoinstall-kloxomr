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
rm -rf kloxo-mr.repo
wget https://github.com/mustafaramadhan/kloxo/raw/release/kloxo-mr.repo --no-check-certificate
cd /
yum install kloxomr -y
sh /script/upcp
rm -rf install.sh
