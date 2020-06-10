#!/bin/bash

#mkdir -p /var/www/mediawiki/extensions

grep -v '^#' config | sed '/^$/d' | while  IFS= read -r line; 
do
    filepath="./extensions/${line}.sh";
    if [ -f $filepath ]; then
        source $filepath
    else
        echo "no file ${filepath}"
    fi
done 