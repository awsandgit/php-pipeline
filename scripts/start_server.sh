#!/bin/bash

set -e
cd /var/www/html
rm -rf index.html
chown -R www-data: .
systemctl restart apache2
echo "Code ApplicationStart event script ran."
