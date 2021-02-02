#!/bin/sh/

if grep -q "autoindex on" /etc/nginx/sites-available/my_domain
then sed -i 's/autoindex on/autoindex off/' /etc/nginx/sites-available/my_domain
echo "Autoindex off!"
nginx -s reload
elif grep -q "autoindex off" /etc/nginx/sites-available/my_domain
then sed -i 's/autoindex off/autoindex on/' /etc/nginx/sites-available/my_domain
echo "Autoindex on!"
nginx -s reload
fi
