#!/bin/bash

echo "Atulizando o servidor...."

apt-get update -y
apt-get upgrade -y

echo "Instalando o apache e o unzip..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/thiagofeldner/maratona-explorer-2/archive/refs/heads/main.zip
unzip main.zip

echo "Entrando na pasta destino e copiando os arquivos para a pasta destino no Apache..."

cd maratona-explorer-2-main
cp -R * /var/www/html/





