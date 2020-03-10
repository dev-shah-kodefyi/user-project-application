FROM tomcat:9

 
RUN rm -rf /usr/local/tomcat/webapps/*

 
COPY /root/.jenkins/workspace/devops201/application-code/code/userproject/target/userproject-0.0.1-SNAPSHOT /usr/local/tomcat/webapps/ROOT.war

 
EXPOSE 8080

 
CMD ["catalina.sh", "run"]

