# Base image
FROM tomcat:latest

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file to the Tomcat webapps directory
COPY your-application.war /usr/local/tomcat/webapps/ROOT.war

# (Optional) If you have additional configuration files, copy them to the Tomcat conf directory
# COPY config/server.xml /usr/local/tomcat/conf/

# (Optional) Expose any required ports
EXPOSE 8080

# Start Tomcat when the container is launched
CMD ["catalina.sh", "run"]
