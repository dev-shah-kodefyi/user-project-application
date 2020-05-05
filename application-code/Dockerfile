FROM tomcat:9.0
RUN echo 'Deploying War on Server'
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /var/lib/jenkins/workspace/userproject/application-code/code/userproject/target/userproject-0.0.1-SNAPSHOT /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
