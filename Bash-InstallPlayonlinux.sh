#!/bin/bash
#Install playonlinux in Redos system
yum -y update
touch /etc/yum.repos.d/playonlinux.repo
echo '[playonlinux]
name=PlayOnLinux Official repository
baseurl=http://rpm.playonlinux.com/fedora/yum/base
enable=1
gpgcheck=0
gpgkey=http://rpm.playonlinux.com/public.gpg' > /etc/yum.repos.d/playonlinux.repo
yum -y install playonlinux nc jq
reboot