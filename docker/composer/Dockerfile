FROM php:7.1

RUN apt-get update -y && \
    apt-get install -y git unzip libpq-dev && \
    docker-php-ext-install zip

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer self-update
RUN composer global require hirak/prestissimo

RUN mkdir -p /var/www/html
WORKDIR /var/www/html

ENTRYPOINT ["composer"]
CMD ["--help"]
