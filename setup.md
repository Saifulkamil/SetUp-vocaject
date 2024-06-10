       ls
    2  unzip -v
    3  sudo apt install zip
    4  unzip vocaject_api-main_2.zip
    5  ls
    6  sudo apt update
    7  sudo apt install lsb-release apt-transport-https ca-certificates software-properties-common -y
    8  history




    1  ls
    2  unzip -v
    3  sudo apt install zip
    4  unzip vocaject_api-main_2.zip
    5  ls
    6  sudo apt update
    7  sudo apt install lsb-release apt-transport-https ca-certificates software-properties-common -y
    8  history
    9  sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

10 sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
   11  sudo apt update
   12  sudo apt install php8.2
   13  php -v
   14  sudo apt install php8.2-{cli,zip,mysql,bz2,curl,mbstring,intl,common}
   15  cd ~
   16  curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
   17  cd ~
   18  curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
   19  HASH=`curl -sS https://composer.github.io/installer.sig`
   20  php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
21 sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
22 composer
23 history

     1  sudo apt update
    2  sudo apt install mariadb-server
    3  sudo systemctl status mariadb
    4  sudo mysql_secure_installation // banyak step 1 masukan password, 2. n, 3. n, 4- habis y

11 sudo mysql -u root -p // masukan password yang sudah di setel
12 history
