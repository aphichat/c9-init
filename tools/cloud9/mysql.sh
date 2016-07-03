#!/bin/sh

# Import database from project.sql file
if [ -f ~/workspace/db/$C9_PROJECT.sql ]; then
  mysql -u$C9_USER c9 < ~/workspace/db/$C9_PROJECT.sql
else
  echo "Error! ${C9_PROJECT}.sql not found to be imported..."
fi