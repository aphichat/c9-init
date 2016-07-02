#!/bin/bash

TD_REPO="git@github.com:28desk/craft"

if [ "$(ls -A ~/workspace/site/public)" ]; then
  echo "Error! public folder is not empty"
else
  mkdir ~/workspace/site/public && git clone $TD_REPO ~/workspace/site/public
  echo "Success! Craft initialized"
fi