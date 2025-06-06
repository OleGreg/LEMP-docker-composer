FROM php:8.2-fpm

# Install common extensions and dev tools
RUN apt-get update && apt-get install -y \
    bash \
    less \
    procps \
    mariadb-client \
    curl \
    unzip \
    git \
    libzip-dev \
    zip \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli \
    && rm -rf /var/lib/apt/lists/*

# Install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html

USER root

RUN which bash && echo "✅ Bash installed!"