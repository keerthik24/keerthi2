# Use the official Tomcat image as the base
FROM tomcat:9

# Remove the default Tomcat webapps directory
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the webapps directory
COPY petclinic.war /usr/local/tomcat/webapps/ROOT.war

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
