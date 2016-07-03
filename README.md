# Project Initiation Script

Setup script for CMS projects

This script rewrite 001-cloud9.conf to change the root to /site/public so we can put other files above the root. Then setup CMS enviorment ready to use.

	$ git clone git@github.com:aphichat/project-initiation
	$ sh build.sh -cms <cms> -root <root_dir>