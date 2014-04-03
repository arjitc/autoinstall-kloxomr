#!/bin/bash
echo Starting Kloxo-MR install...
read -p "press [enter] to start..."
cd /
yum update -y
yum install yum-utils yum-priorities vim-minimal subversion curl zip unzip -y
yum install telnet -y
setenforce 0
echo ‘SELINUX=disabled’ > /etc/selinux/config
 # move repo dir
    cd /etc/yum.repos.d/

    # get repo file -- no need for 6.5.0.c and after
    wget https://github.com/mustafaramadhan/kloxo/raw/release/kloxo-mr.repo --no-check-certificate

    # move to /
    cd /

    # install (and then run 'setup.sh' instead 'installer.sh')
    yum install kloxomr
#yum install yum-plugin-replace -y
#yum replace mysql --replace-with=mysql55 -y
#chkconfig mysqld on
#yum install kloxomr -y
    # to make sure uss latest version of OS
    #yum clean all
    #yum update -y
    #sh /script/convert-to-qmailtoaster
    
    # install
    #yum install kloxomr -y
    #sh /script/upcp -y
#yum reinstall kloxomr
#sh /script/upcp
#sh /script/restart
read -p "Install done! Reboot VPS once done!"
