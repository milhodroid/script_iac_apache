# !/bin/bash

echo "Atualizando o sistemUpdating system"
apt-get update -y
apt-get upgrade -y

echo "Installing apache"
apt-get install apache2 -y

echo "Installing unzip"
apt-get install unzip -y

echo "Downloading application from github to /tmp"
cd /tmp
apt-get install wget -y
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extracting the application to apache default folder"
unzip main.zip
cd linux-site-dio-main
cp -r * /var/www/html

echo "Restarting apache service"
systemctl restart apache2

echo "Script has finished apache instalation and application copy!"
