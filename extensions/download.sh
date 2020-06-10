#!/bin/bash

wget https://extdist.wmflabs.org/dist/extensions/${1}
tar -xzf $1 -C /var/www/html/extensions
rm $1