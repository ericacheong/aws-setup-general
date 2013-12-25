#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup.

# Install git
sudo apt-get install -y git
sudo apt-get install -y curl

sudo apt-get update 
sudo apt-get -y upgrade

# Install apache

sudo apt-get install -y apache2

# Install php
sudo apt-get install -y libapache2-mod-php5 php5-gd

sudo service apache2 restart

# Install mysql
sudo apt-get install -y mysql-server libapache2-mod-auth-mysql php5-mysql

:'
# Download Drupal v7.
cd /var/www
sudo wget http://ftp.drupal.org/files/projects/drupal-7.24.tar.gz
sudo tar zxvf drupal-7.24.tar.gz
sudo mv drupal-7.24 d7

# Set up file system
sudo mkdir /var/www/d7/sites/default/files
sudo chmod 777 files

# Copy settings.php
sudo cp /var/www/d7/sites/default/default.settings.php /var/www/d7/sites/default/settings.php
sudo chmod a+w /var/www/d7/sites/default/settings.php 

# Install modules
cd d7/sites/all/modules

# Download ctools, token, pathauto, views, i18n, admin menu, webform
sudo wget http://ftp.drupal.org/files/projects/views-7.x-3.7.tar.gz
sudo tar zxvf views-7.x-3.7.tar.gz

sudo wget http://ftp.drupal.org/files/projects/pathauto-7.x-1.2.tar.gz
sudo tar zxvf pathauto-7.x-1.2.tar.gz
 
sudo wget http://ftp.drupal.org/files/projects/token-7.x-1.5.tar.gz
sudo tar zxvf token-7.x-1.5.tar.gz

sudo wget http://ftp.drupal.org/files/projects/panels-7.x-3.3.tar.gz
sudo tar zxvf panels-7.x-3.3.tar.gz

sudo wget http://ftp.drupal.org/files/projects/i18n-7.x-1.10.tar.gz
sudo tar zxvf i18n-7.x-1.10.tar.gz

sudo wget http://ftp.drupal.org/files/projects/ctools-7.x-1.3.tar.gz
sudo tar zxvf ctools-7.x-1.3.tar.gz

sudo wget http://ftp.drupal.org/files/projects/admin_menu-7.x-3.0-rc4.tar.gz
sudo tar zxvf admin_menu-7.x-3.0-rc4.tar.gz

sudo wget http://ftp.drupal.org/files/projects/webform-7.x-3.19.tar.gz
sudo tar zxvf webform-7.x-3.19.tar.gz

sudo wget http://ftp.drupal.org/files/projects/wysiwyg-7.x-2.2.tar.gz
sudo tar zxvf wysiwyg-7.x-2.2.tar.gz

sudo wget http://ftp.drupal.org/files/projects/google_analytics-7.x-1.4.tar.gz
sudo tar zxvf google_analytics-7.x-1.4.tar.gz

# Potential candidates to be added into standard package
# XML sitemap, Rules, CAPTCHA

# Download theme framework

cd ../themes

# Download zen framework
sudo wget http://ftp.drupal.org/files/projects/zen-7.x-5.4.tar.gz
sudo tar zxvf zen-7.x-5.4.tar.gz

# Create and update subtheme
sudo cp -r zen/STARTERKIT .
sudo mv STARTERKIT pilgrim
sudo mv pilgrim/STARTERKIT.info.txt pilgrim/pilgrim.info
cd pilgrim
sudo echo "Zen sub-theme Pilgrim installed."

# Set up complete
sudo echo "Set up completed!"
sudo echo "You can now create MySQL database and set up Drupal."
'
