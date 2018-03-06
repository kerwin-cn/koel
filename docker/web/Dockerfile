FROM php:7.1-apache
ENV APACHE_DOCUMENT_ROOT /var/www/html

COPY ./apache/000-default.conf /etc/apache2/sites-available

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

RUN apt-get update && apt-get install -y libpq-dev
RUN docker-php-ext-install pdo pdo_pgsql mbstring

RUN pecl install xdebug-2.5.0
RUN docker-php-ext-enable xdebug

RUN a2enmod vhost_alias && a2enmod rewrite && service apache2 restart
