# Use official Tomcat 9 base image
FROM tomcat:9.0

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file from the build context (adjust path if necessary)
COPY target/JavaWebLoginApp.war /usr/local/tomcat/webapps/JavaWebLoginApp.war

# Expose default Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

