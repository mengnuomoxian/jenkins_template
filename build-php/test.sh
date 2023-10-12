#!/bin/bash

set -x
php -v
composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
composer install
