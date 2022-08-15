
#!/bin/dash


echo "Atualizando Servidor..."

apt-get update -y
apt-get upgrade -y

echo "Servidor atualizado... Instalando Apache 2"

apt-get install apache2 -y

echo "Apache 2 instalado com sucesso! Instalando Unzip..."

apt-get install unzip -y

echo "Unzip Instalado com Sucesso!"
echo "Baixando Aplicação Web!"

apt-get install wget -y

cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo na pasta padrão Apache2"

unzip main.zip
cd linux-site-dio-main

cp -R * /var/www/html

