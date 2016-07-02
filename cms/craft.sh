#!/bin/bash

TD_SITE="~/workspace/site/public"

if [ ! "$(ls -A ${TD_SITE}/public)" ]; then
  rm -r ${TD_SITE}/public
  cd $TD_PUBLIC && git clone git@github.com:28desk/craft .
  mkdir ${TD_SITE}/public
  echo "Success! Craft initialized"
else
  echo "Error! public folder is not empty"
fi