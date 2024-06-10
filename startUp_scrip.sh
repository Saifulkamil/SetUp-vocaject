#!/bin/bash
sudo apt update
echo "update system selesai ............................"
sudo apt install lsb-release apt-transport-https ca-certificates software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt install php8.3 -y
echo "Install php selesai............................"
sudo apt install mysql-client -y
echo "Install mysql-client selesai............................"
sudo apt-get install php8.3-cli php8.3-common php8.3-mysql php8.3-zip php8.3-gd php8.3-mbstring php8.3-curl php8.3-xml php8.3-bcmath php8.3-dom  -y
echo "Install library php selesai............................"
git clone https://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@github.com/zulfahmidev/vocaject_api.git
echo "clone project selesai............................"
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php 
echo "Memverifikasi installer Composer........"
HASH=$(curl -sS https://composer.github.io/installer.sig)
if [ "$(openssl sha384 /tmp/composer-setup.php | awk '{print $2}')" == "$HASH" ]; then
    echo "Installer verified"
    echo "Menjalankan instalasi Composer........"
    sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
else
    echo "Installer corrupt"
fi
echo "Menghapus file composer-setup.php............"
rm /tmp/composer-setup.php
echo "instalasi Composer selesai................."
cd /home/saifulkamil18/vocaject_api
echo "masuk ke dir vocaject_api selesai................."
cp .env.example .env
echo "copy file .env.example selesai................."
composer install
echo "laravel install  selesai................."