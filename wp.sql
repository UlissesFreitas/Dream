
CREATE USER 'dream-wordpress'@'localhost' IDENTIFIED BY 'dream-password';
CREATE DATABASE `DATA_WORDPRESS`;
GRANT ALL PRIVILEGES ON `DATA_WORDPRESS`.* TO "dream-wordpress"@"localhost";
FLUSH PRIVILEGES;
exit