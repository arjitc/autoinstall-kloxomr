#!/bin/bash
echo Starting Kloxo-MR install...
read -p "press [enter] to start..."
cd /
yum update -y
yum install yum-utils yum-priorities vim-minimal subversion curl zip unzip -y
yum install telnet -y
setenforce 0
echo ‘SELINUX=disabled’ > /etc/selinux/config
wget https://github.com/mustafaramadhan/kloxo/raw/dev/kloxo/install/kloxo-mr-dev.sh --no-check-certificate
sh ./kloxo-mr-dev.sh
cd /
yum clean all
#yum install yum-plugin-replace -y
#yum replace mysql --replace-with=mysql55 -y
#chkconfig mysqld on
#yum install kloxomr -y
sh /script/upcp
yum clean all
#yum reinstall kloxomr
#sh /script/upcp
sh /script/restart
read -p "Install done! Reboot VPS once done!"
