FROM php:8.2-fpm

# Install mysqli extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Install system dependencies for WP-CLI
RUN apt-get update && apt-get install -y \
    less \
    mariadb-client \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Download and install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp

# Set up default working directory for WP-CLI
WORKDIR /var/www/html