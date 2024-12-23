#!/bin/bash

sudo yum update 
sudo yum install php8.3 php8.3-fpm php8.3-mysqlnd -y
sudo yum install mariadb105-server -y
sudo yum install nginx -y

sudo systemctl enable nginx
sudo systemctl enable mariadb
sudo systemctl enable php-fpm

sudo systemctl start nginx
sudo systemctl start mariadb
sudo systemctl start php-fpm

wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
rm latest.tar.gz

