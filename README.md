# Project Setup File for LAMP development

The purpose of this file is to set up AWS EC2 environment with latest LAMP software
installation.

This setup file will install the follow software:
	- Apache2
	- PHP5
	- MySQL
	- phpMyAdmin
	- zip, unzip

and update the server to latest Ubuntu channels and software. 

## Assumptions

* Ubuntu 12.04 LTS EC2 instance

## Usage

1. Set up AWS EC2 with Ubuntu 12.04 32-bit instance
2. Install git
`$ sudo apt-get install -y git`
3. Pull this file from github
`$ git pull git@github.com:randomolive/aws-setup-general.git`
4. Execute this file