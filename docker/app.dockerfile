FROM dunglas/frankenphp

ENV SERVER_NAME=":80"

WORKDIR /var/www/app

COPY .  /var/www/app

RUN apt update && apt install -y \
    zip unzip curl bash git \
    libpq-dev libzip-dev libonig-dev \
    && docker-php-ext-install zip pcntl pdo pdo_mysql pdo_pgsql

COPY  --from=composer:2.2 /usr/bin/composer /usr/bin/composer

RUN composer install && \
    composer require laravel/octane && \
    php artisan octane:install --server=frankenphp

# EXPOSE 8002

# CMD php artisan octane:start --server=frankenphp --host=0.0.0.0  --port=8002 --workers=4

# CMD ["php", "artisan", "octane:start", "--server=frankenphp", "--host=0.0.0.0", "--port=8001", "--workers=4"]