buat vpc untuk vocaject

    - fill name vpc <terserah>
    - fill name subnet <terserah>
    - region choose =  asia-southeast1 <singapore>
    - ipv4 range = 10.184.0.0/20
    - private google access  = On
    - done
    - don't select any ipv4 firewall rule
    - dynamic routing mode = regional
    -create

buat firewall untuk vpc yang di buat sebelumnya

    - fill name firewall <terserah>
    - choose network atau pilih vpc yang di buat sebelumnya
    - select targets = all instance in the netowrk <optional specified target tags ini perlu ini nama targets tags nya dan di isi sama di compute dan difirewall>
    - source ipv4 ranges = 0.0.0.0/0
    - protocol and ports
        - specified protocol dan ports
            - TCP = 80, 443, 8000, 22, 3306
            - Other = IMCP
    - created

buat vm instance

    - fill name vm
    - select region asia-southeast1 <singapore>
    - type mesin e2 micro
    - boot dist (ini untuk membuat vm pertama bukan clone disk)
        select ubuntu 22 x86
    - access scope = allow full access to al cloud apis
    - networking
        - pada network tags jika pada firewwall di pilih all instance in the netowrk maka di network tags di kosongkan, kalau di firewall di pilih specified target tags maka isi network tags dengan nama target di firewall
    - network interfaces
        - pilih vpc yang telah di buat sebelum dan sesuaikan subnet nya
        - internal ipv4 ephemeral(automatic)
        - external ipv4 ephemeral(automatic)
        - done
    - create

install mysql

    - sudo apt update
    - sudo apt install mariadb-server -y
    - sudo mysql -u root -p
        - mysql >> create database vocaject;
        - mysql >> CREATE USER 'vocaject'@'%' IDENTIFIED BY '123';
        - mysql >> GRANT ALL PRIVILEGES ON * . * TO 'vocaject'@'%';
        - mysql >> FLUSH PRIVILEGES;
        - mysql >> select user.host from mysql.user;
        - quit
    - sudo mysql -u vocaject -p vocaject < db_vocaject_3.sql
    - sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf
      #bind-address            = 127.0.0.1

clone image vm untuk vm dabases private

    - klik pada nama vm yang mau di clone
    - create machine image
    - fill name
    - select source vm instance (vm database yang mau di clone)
    - location = multi-regional (asia multiple regions in asia)
    - googel-meneged encryption key
    - create

buat vm dari image yang di clone

    - klik create instance
    - pilih new vm instance from meshine image
    - select mechine iamge(pilih image yang yang mau di clone)
    - continue
    - atur sesuai kebutuhan (ip external di hilangkan)

connect database dari vm yang berbeda

    - pastikan bisa ping ke vm dabases dan port database(3306) terbuka
    - sudo apt install mariadb-client -y
    - mysql -h <ip-(internal/external)-vm-database> -u vocaject -p
    - pastikan database yang dibuat sebelumnya ada

jika php myadmin gagal

    - sudo apt install libapache2-mod-php8.1
    sudo systemctl restart apache2
