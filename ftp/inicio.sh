#!/bin/bash
nohup apt update
nohup apt install nginx -y
nohup wget -P /var/www/html/ https://github.com/DavidLMS/katacoda-scenarios/raw/master/ftp/assets/monsta_ftp_2.10.1_install.zip
nohup apt install php -y
nohup unzip /var/www/html/monsta_ftp_2.10.1_install.zip -d /var/www/html