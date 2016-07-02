#!/bin/bash

TD_CONF_FILE="etc/apache2/sites-available/001-cloud9.conf"

sudo cp ${TD_CONF_FILE} /${TD_CONF_FILE}
if [ ! -d ~/workspace/site ]; then
  mkdir ~/workspace/site
  echo "Success! Created public folder for server root"
else
  echo "Error! site folder is not empty"
fi