#!/bin/bash

# Graph extension requires JsonConfig extension
if [ ! -d /var/www/html/extensions/JsonConfig ]; then
    source ./extensions/JsonConfig.sh
fi

filename="Graph-REL1_34-eb3412d.tar.gz"

source ./extensions/download.sh $filename