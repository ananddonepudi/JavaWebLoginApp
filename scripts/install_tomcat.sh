#!/bin/bash

set -e

echo "Installing Java if not already installed..."
sudo yum install -y java-11-openjdk

echo "Downloading Apache Tomcat 9..."
cd /opt
sudo curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz

echo "Extracting Tomcat..."
sudo tar -xvzf apache-tomcat-9.0.85.tar.gz
sudo mv apache-tomcat-9.0.85 tomcat

echo "Setting permissions..."
sudo chmod +x /opt/tomcat/bin/*.sh

echo "Starting Tomcat server..."
/opt/tomcat/bin/startup.sh

echo "Tomcat installation and startup complete."
