#!/bin/sh

TD_WP_PUBLIC="https://github.com/28desk/wordpress-wp-content/archive/master.zip"
TD_WP_BOOTSTRAP="https://github.com/28desk/wordpress-bootstrap/archive/master.zip"

if [ "$(ls -A $1)" ]; then
  echo "Error! Root folder must be empty"
else
  git clone "git@github.com:28desk/wordpress" $1/public
  
  curl -LOk $TD_WP_PUBLIC && unzip master.zip && rm master.zip
  mv wordpress-wp-content-master $1/public/wp-content
  
  curl -LOk $TD_WP_BOOTSTRAP && unzip master.zip && rm master.zip
  mv wordpress-bootstrap-master/* $1
  rm -rf wordpress-bootstrap-master
  
  echo "WordPress CMS initialized!!!"
fi