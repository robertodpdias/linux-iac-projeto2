#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Fazendo o download do github..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo..."

unzip main.zip

echo "Provisionando o site..."

cd linux-site-dio

cp -R * /var/www/html/


echo "Servidor e Site estão prontos."