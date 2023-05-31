FROM php:8.0-apache

# Use the default production configuration. This file is provided by the php image
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Install mysqli php module
# TODO look for alternatives that don't need to use legacy database auth
RUN docker-php-ext-install mysqli

# Copy src code from git submodule
COPY Cloudlog/ /var/www/html/

# Set file ownership
RUN chown -R www-data:www-data /var/www/html/

# Grant Write Permissions
RUN chmod -R g+rw /var/www/html/