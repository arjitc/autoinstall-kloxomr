#!/bin/bash
echo Starting Kloxo-MR install...
read -p "press [enter] to start..."
cd /
yum update -y
yum install yum-utils yum-priorities vim-minimal subversion curl zip unzip -y
yum install telnet -y
setenforce 0
echo ‘SELINUX=disabled’ > /etc/selinux/config
rpm -ivh https://github.com/mustafaramadhan/kloxo/raw/rpms/release/neutral/noarch/mratwork-release-0.0.1-1.noarch.rpm
yum update mratwork-release -y
#yum install yum-plugin-replace -y
#yum replace mysql --replace-with=mysql55 -y
#chkconfig mysqld on
#yum install kloxomr -y
    # to make sure uss latest version of OS
    yum clean all
    yum update -y
    sh /script/convert-to-qmailtoaster
    
    # install
    yum install kloxomr -y
    sh /script/upcp -y
#yum reinstall kloxomr
#sh /script/upcp
sh /script/restart
read -p "Install done! Reboot VPS once done!"
