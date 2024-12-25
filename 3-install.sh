#!/bin/bash

sudo yum install docker -y
sudo yum install libxcrypt-compat -y

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo mkdir /var/www/html/site-docker


sudo docker-compose up -d

sudo systemctl start docker
sudo systemctl enable docker
