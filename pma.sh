#!/bin/bash

echo 'Downloading phpMyAdmin 4.7.4'
curl -#L https://files.phpmyadmin.net/phpMyAdmin/4.7.4/phpMyAdmin-4.7.4-english.tar.gz -o phpmyadmin.tar.gz

mkdir phpmyadmin && tar xf phpmyadmin.tar.gz -C phpmyadmin --strip-components 1

rm phpmyadmin.tar.gz

CMD=serve

sudo bash $CMD phpmyadmin.app $(pwd)/phpmyadmin

sudo service nginx reload
