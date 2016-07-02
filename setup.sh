#!/bin/bash

APACHE_PATH="/etc/apache2/sites-available"

if [ -f ${APACHE_PATH}/001-cloud9.conf ]; then
  sudo cp 001-cloud9.conf ${APACHE_PATH}/001-cloud9.conf
  if [ ! -d ~/workspace/site ]; then
    mkdir ~/workspace/site && mkdir ~/workspace/site/public
    cp index.html ~/workspace/site/public/index.html
  fi
fi