debian

sudo apt update
sudo apt install zip
unzip vocaject_api-main_2.zip
mv db_vocaject_prod.sql .env vocaject_api-main
cd vocaject_api-main/
sudo apt install lsb-release apt-transport-https ca-certificates software-properties-common -y
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt update
sudo apt install php8.2
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

sudo apt install mariadb-server
sudo apt install php8.2-curl php8.2-xml php8.2-dom php8.2-mysql

sudo mysql -u root -e "create database vocaject; use vocaject; source db*vocaject_prod.sql; CREATE USER 'vocaject'@'localhost' IDENTIFIED BY '123'; GRANT ALL PRIVILEGES ON * . \_ TO 'vocaject'@'localhost'; FLUSH PRIVILEGES;"

composer install --ignore-platform-req=ext-curl --ignore-platform-req=ext-dom --ignore-platform-req=ext-xml

sudo php artisan serve --host=0.0.0.0 --port=80

<!-- SHOW GRANTS FOR 'vocaject'@'localhost'; -->

ubuntu

sudo apt update
sudo apt install zip
unzip vocaject_api-main_2.zip
mv db_vocaject_prod.sql .env vocaject_api-main
cd vocaject_api-main/
sudo apt install lsb-release apt-transport-https ca-certificates software-properties-common -y
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php8.1 -y
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

sudo apt install mariadb-server -y
sudo apt-get install -y php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath php8.1-dom

sudo apt install php8.2-curl php8.1-xml php8.2-dom php8.2-mysql

sudo mysql -u root -e "create database vocaject; use vocaject; source db*vocaject_prod.sql; CREATE USER 'vocaject'@'localhost' IDENTIFIED BY '123'; GRANT ALL PRIVILEGES ON * . \_ TO 'vocaject'@'localhost'; FLUSH PRIVILEGES;

composer install --ignore-platform-req=ext-curl --ignore-platform-req=ext-dom --ignore-platform-req=ext-xml

<!-- SHOW GRANTS FOR 'vocaject'@'localhost'; -->
<!-- sudo netstat -tulnp | grep 80 -->
<!-- sudo netstat -tulnp | grep listen -->

front end

sudo apt update
sudo apt install zip -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

nvm install 18

nvm use 18
sudo apt install zip

unzip vocaject_api-main_2.zip

sudo netstat -tulnp | grep 300

sudo apt-get purge 'php\*'

sudo apt-get install -y php8.1-curl php8.1-xml php8.1-dom php8.1-mysql

sudo apt-get install -y php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath php8.1-dom

intance mysql

1 sudo apt updatee
2 sudo apt update
3 sudo apt install mariadb-server
4 sudo apt install lsb-release apt-transport-https ca-certificates software-properties-common -y
5 sudo add-apt-repository ppa:ondrej/php
6 sudo apt update
7 sudo apt install php8.1 -y
8 sudo apt-get install -y php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath php8.1-dom
9 history

instanc template

1 ping 10.184.0.3
2 ping 10.182.0.3
3 sudo apt update
4 sudo apt install lsb-release apt-transport-https ca-certificates software-properties-common -y
5 sudo add-apt-repository ppa:ondrej/php
6 sudo apt update
7 sudo apt install php8.1 -y
8 sudo apt install mariadb-server -y
9 sudo apt-get install -y php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath php8.1-dom
10 sudo git clone https://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@github.com/zulfahmidev/vocaject_api.git
11 curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
12 HASH=`curl -sS https://composer.github.io/installer.sig`
13 php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
14 sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
15 composer
16 ls
17 cd v
18 cd vocaject_api/
19 history

buat screen
screen -S "php"

masok screen
screen -r "php"
