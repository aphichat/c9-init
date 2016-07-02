#!/bin/bash

TD_REPO="git@github.com:28desk/craft"

if [ "$(ls -A ~/workspace/site)" ]; then
  echo "Error! site folder must be empty"
else
  git clone $TD_REPO ~/workspace/site && mkdir ~/workspace/site/public
  echo "Success! Craft initialized"
fi