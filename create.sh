#!/bin/sh

TD_CONF_FILE="etc/apache2/sites-available/001-cloud9.conf"

if [ $1 == "-cms" ] && [ $3 == "-root" ]; then
  if [ "$(ls -A $4)" ]; then
    echo "Error! Root folder is not empty"
  else
    if [ -d ~/workspace ]; then
      # Cloud9 setup
      sudo cp $TD_CONF_FILE /$TD_CONF_FILE
    fi
    # create working directory & setup CMS
    mkdir -p $4 && sh build/cms/$2.sh $4
  fi
else
  echo "Error! please use -cms and -root flags"
fi