# Cloud9 Setup script

Initialize PHP, Apache, MySQL workspace for Cloud9

This script rewrite 001-cloud9.conf to change the public html to /site/public and moves the root folder to the site folder

	$ curl https://raw.githubusercontent.com/aphichat/c9-init/master/setup.sh > setup.sh
	$ sh setup.sh