#!/bin/bash
#####################
# aptget.sh
# This script will install components required for daily work.
#####################

# Variables
$componentsToInstall = "vim "
#####################


echo "Please provide an admin password to install required components"
su 

for tempVar in $componentsToInstall do
	echo "Installing "$tempVar
	apt-get install $tempVar
done

echo "..done"
