 #!/bin/bash

# This script automatically installs and configures MariaDB 10.1.

# copy repo file
sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://ftp.cc.uoc.gr/mirrors/mariadb/repo/10.2/ubuntu xenial main'

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get update
sudo apt-get -y install mariadb-server
