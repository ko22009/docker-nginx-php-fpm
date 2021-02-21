FROM php:7.4-fpm-alpine

RUN apk add --no-cache \
    autoconf \
    curl \
    dpkg-dev \
    dpkg \
    freetype-dev \
    file \
    g++ \
    gcc \
    git \
    icu-dev \
    jpeg-dev \
    libc-dev \
    libmcrypt-dev \
    libpng-dev \
    libjpeg-turbo-dev \
    libxml2-dev \
    libzip-dev \
    make \
    mariadb-dev \
    postgresql-dev \
    pkgconf \
    php7-dev \
    re2c \
    rsync \
    unzip \
    wget \
    zlib-dev

RUN docker-php-ext-install \
    zip \
    iconv \
    soap \
    sockets \
    intl \
    pdo_mysql \
    pdo_pgsql \
    exif \
    pcntl

RUN apk add php7-pecl-xdebug \
    && echo xdebug.remote_enable=1 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo xdebug.remote_port=9001 >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo xdebug.remote_host=host.docker.internal >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN addgroup developer
RUN adduser --disabled-password -G developer developer

COPY --chown=developer:developer . /var/www/html
WORKDIR /var/www/html

CMD ["php-fpm"]