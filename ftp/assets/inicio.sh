#!/bin/bash
apt update
apt install nginx -y
apt install php -y
cd /var/www/html/
wget https://github.com/DavidLMS/katacoda-scenarios/raw/master/ftp/assets/monsta_ftp_2.10.1_install.zip
unzip monsta_ftp_2.10.1_install.zip
cp -R mftp/* ./
rm -R mftp
rm monsta_ftp_2.10.1_install.zip