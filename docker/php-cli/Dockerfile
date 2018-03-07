FROM php:7.1

RUN apt-get update && apt-get install -y libpq-dev && \
    docker-php-ext-install pdo pdo_pgsql

RUN mkdir -p /var/www/html
WORKDIR /var/www/html

ENTRYPOINT ["php"]
CMD ["-v"]
