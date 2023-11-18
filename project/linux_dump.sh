# MariaDB 설치
sudo apt-get update
1234
sudo apt-get install mariadb-server

# MariaDB 서비스 시작
sudo systemctl start mariadb
sudo systemctl enable mariadb

sudo mariadb -u root -p
1234
create database board;
exit


git clone https://github.com/kimseonguk197/mariadb_syntax.git
cd mariadb_syntax/project
sudo mysql root -p board < dumpfile.sql