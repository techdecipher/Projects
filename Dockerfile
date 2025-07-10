FROM tomcat:9-jdk17

# Copy JSP page
COPY app/index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp

# Copy JDBC driver to Tomcat lib
COPY libs/mysql-connector.jar /usr/local/tomcat/lib/

EXPOSE 8080
