#!/bin/bash
		
if [ ! -f "/var/www/ssl/${DOMAIN}.key" ] || [ ! -f "/var/www/ssl/${DOMAIN}.crt" ]; then
    openssl req -x509 -newkey rsa:4096 -days 365 -nodes \
            -keyout /var/www/ssl/${DOMAIN}.key -new -out /var/www/ssl/${DOMAIN}.crt \
		    -subj "/CN=$DOMAIN";
fi

sh /docker-entrypoint.sh nginx -g "daemon off;"