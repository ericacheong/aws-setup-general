#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup.

# Install git
sudo apt-get install -y git
sudo apt-get install -y curl

# Install zip and unzip
sudo apt-get install -y zip unzip

sudo apt-get update 
sudo apt-get -y upgrade

# Install apache

sudo apt-get install -y apache2

# Install php
sudo apt-get install -y libapache2-mod-php5 php5-gd

sudo service apache2 restart

# Install mysql
sudo apt-get install -y mysql-server libapache2-mod-auth-mysql php5-mysql

# Complete message
sudo echo "Set up completed!"
