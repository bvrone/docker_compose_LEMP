#!/bin/bash

if ! $(wp core is-installed --allow-root); then
	wp config shuffle-salts --allow-root
    wp core install \
        --allow-root    \
        --url=localhost        \
        --title=${WP_SITE_TITLE}    \
        --admin_user=${WP_ADMIN_USER}     \
        --admin_password=${WP_ADMIN_PASS} \
        --admin_email=${WP_ADMIN_EMAIL}
	wp user create --allow-root ${WP_USER} ${WP_USER_MAIL} --user_pass=${WP_USER_PASS}
fi

exec "$@"

# wp core install --allow-root --url=localhost --title=${WP_SITE_TITLE} --admin_user=${DB_USER} --admin_password=${DB_PASSWORD} --admin_email=${WP_ADMIN_EMAIL}

# wp config create --allow-root --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --dbhost=${DB_HOST}