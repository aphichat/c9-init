#!/bin/sh

# Export database from Cloud9 database
if [ -d ~/workspace/db ]; then
  mysqldump -u$C9_USER c9 > ~/workspace/db/dumped--$C9_HOSTNAME.sql
else
  echo "Error! No db folder found..."
fi