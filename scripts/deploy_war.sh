#!/bin/bash

set -e

echo "Stopping Tomcat server..."
/opt/tomcat/bin/shutdown.sh || true

echo "Removing old application WAR and exploded directory..."
sudo rm -rf /opt/tomcat/webapps/JavaLoginApp.war
sudo rm -rf /opt/tomcat/webapps/JavaLoginApp

echo "Copying new WAR file to Tomcat webapps directory..."
sudo cp /opt/deployment/output/JavaLoginApp.war /opt/tomcat/webapps/

echo "Starting Tomcat server..."
/opt/tomcat/bin/startup.sh

echo "Deployment completed successfully."
