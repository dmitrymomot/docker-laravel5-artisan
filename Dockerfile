FROM php:7.2-cli

RUN apt-get update && apt-get install -y libmcrypt-dev
RUN docker-php-ext-install mbstring mcrypt pdo pdo_mysql

RUN mkdir -p /usr/local/etc/php/conf.d
RUN mkdir -p /data/www

WORKDIR /data/www

USER www-data

ENTRYPOINT ["php", "artisan"]
CMD ["env"]
