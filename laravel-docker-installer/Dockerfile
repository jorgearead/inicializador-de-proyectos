FROM php:8.2-fpm-bullseye

# Dependencias básicas
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    zip \
    curl

# Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www