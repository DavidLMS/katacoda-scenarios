#!/bin/bash
nohup apt update
nohup apt install nginx -y
nohup apt install php -y
nohup wget -P /var/www/html/ https://github.com/DavidLMS/katacoda-scenarios/raw/master/ftp/assets/monsta_ftp_2.10.1_install.zip
nohup unzip /var/www/html/monsta_ftp_2.10.1_install.zip
nohup cp -R /var/www/html/mftp/* /var/www/html/
nohup rm -R /var/www/html/mftp
nohup rm /var/www/html/monsta_ftp_2.10.1_install.zip