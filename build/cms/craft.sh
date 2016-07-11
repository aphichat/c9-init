#!/bin/sh

TD_CRAFT_PUBLIC="https://github.com/28desk/craft-public/archive/master.zip"
TD_CRAFT_CONFIG="https://github.com/28desk/craft-config/archive/master.zip"

if [ "$(ls -A $1)" ]; then
  echo "Error! Root folder must be empty"
else
  git clone "git@github.com:28desk/craft" $1
  
  curl -LOk $TD_CRAFT_PUBLIC && unzip master.zip && rm master.zip
  mv craft-public-master/* $1/public
  rm -rf craft-public-master
  
  curl -LOk $TD_CRAFT_CONFIG && unzip master.zip && rm master.zip
  mv craft-config-master $1/craft/config
  
  echo "Craft CMS initialized!!!"
fi