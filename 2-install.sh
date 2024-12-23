#!/bin/bash

echo "senha do banco de dados"
sudo mysql -u root -p < wp.sql

sudo mkdir /var/www/html/site-wordpress
sudo cp wp-config.php wordpress/
sudo cp -r wordpress/* /var/www/html/site-wordpress
sudo cp site-wordpress.conf /etc/nginx/conf.d/

sudo mkdir /var/www/html/site-exemplo
sudo cp index.php /var/www/html/site-exemplo/
sudo cp site-exemplo.conf /etc/nginx/conf.d/

sudo chown -R nginx:nginx /var/www/html/

sudo systemctl restart nginx
sudo systemctl restart mariadb
sudo systemctl restart php-fpm
