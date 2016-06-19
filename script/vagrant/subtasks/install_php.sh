#!/usr/bin/env bash

# install PHP 5.6
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php -y

sudo apt-get update -y
sudo apt-get install php5.6 \
                php5.6-mbstring \
                php5.6-xml \
                -y

# install Composer into /usr/bin
# an alias for Composer can be found in the .bashrc in the vagrant provision folder,
# so it can be simply called anywhere without passing to PHP with the full path of composer.phar
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/usr/bin
php -r "unlink('composer-setup.php');"
