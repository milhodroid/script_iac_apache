# !/bin/bash

echo "Atualizando o sistemUpdating system"
apt-get update -y
apt-get upgrade -y

echo "Installing apache"
apt-get install apache2

echo "Installing unzip"
apt-get install unzip

echo "Downloading application from github to /tmp"
cd /tmp
apt-get wget -y
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extracting the application to apache default folder"
cd linux-site-dio
cp -r * /var/www/html
