#!/bin/bash

CONF_FILE="https://raw.githubusercontent.com/aphichat/c9-init/master/001-cloud9.conf"
INDEX_FILE="https://raw.githubusercontent.com/aphichat/c9-init/master/index.html"
APACHE_PATH="/etc/apache2/sites-available"

if [ -f ${APACHE_PATH}/001-cloud9.conf ]; then
  curl ${CONF_FILE} > 001-cloud9.conf
  sudo cp 001-cloud9.conf ${APACHE_PATH}/001-cloud9.conf && rm 001-cloud9.conf
  mkdir site && cd site && mkdir public
  curl ${INDEX_FILE} > site/public/index.html
fi