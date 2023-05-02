#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 mysql-server php git -y
sudo systemctl enable apache2
sudo systemctl enable mysql
sudo systemctl start apache2
sudo systemctl start mysql

