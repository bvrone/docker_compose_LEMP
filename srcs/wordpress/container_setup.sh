#!/bin/bash

if ! $(wp core is-installed); then
    wp core install \
        --allow-root    \
        --url=${WP_SITE_URL}        \
        --title=${WP_SITE_TITLE}    \
        --admin_user=${DB_USER}     \
        --admin_password=${DB_PASSWORD} \
        --admin_email=${WP_ADMIN_EMAIL}
fi

exec "$@"