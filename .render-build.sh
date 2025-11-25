#!/bin/bash

# Install dependencies
composer install --no-dev --optimize-autoloader

# Create SQLite database if it doesn't exist
touch database/database.sqlite

# Run migrations
php artisan migrate --force

# Cache config, routes, and views
php artisan config:cache
php artisan route:cache
php artisan view:cache
