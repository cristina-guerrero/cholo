FROM php:8.0.0-apache
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update \
    && apt install -y libzip-dev zlib1g-dev cmatrix \
    && docker-php-ext-install mysqli zip \
    && rm -rf /var/lib/apt/lists/*
RUN a2enmod rewrite