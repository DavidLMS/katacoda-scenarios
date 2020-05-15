#!/bin/bash
nohup apt update
nohup apt install nginx -y
nohup apt install php -y
nohup cd /var/www/html/
nohup wget https://github.com/DavidLMS/katacoda-scenarios/raw/master/ftp/assets/monsta_ftp_2.10.1_install.zip
nohup unzip monsta_ftp_2.10.1_install.zip
nohup cp -R mftp/* ./
nohup rm -R mftp
nohup rm monsta_ftp_2.10.1_install.zip