#!/bin/bash

# if ! $(wp core is-installed --allow-root); then
#	wp config shuffle-salts --allow-root
#     wp core install \
#         --allow-root    \
#         --url=${WP_SITE_URL}        \
#         --title=${WP_SITE_TITLE}    \
#         --admin_user=${DB_USER}     \
#         --admin_password=${DB_PASSWORD} \
#         --admin_email=${WP_ADMIN_EMAIL}
# fi

exec "$@"

# wp core install --allow-root --url=${WP_SITE_URL} --title=${WP_SITE_TITLE} --admin_user=${DB_USER} --admin_password=${DB_PASSWORD} --admin_email=${WP_ADMIN_EMAIL}

# wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST}