#!/bin/bash
apt update
wait 5
apt install nginx -y
wait 5
apt install php -y
wait 5
cd /var/www/html/
wget https://github.com/DavidLMS/katacoda-scenarios/raw/master/ftp/assets/monsta_ftp_2.10.1_install.zip
wait 3
unzip monsta_ftp_2.10.1_install.zip
cp -R mftp/* ./
rm -R mftp
rm monsta_ftp_2.10.1_install.zip