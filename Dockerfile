FROM tomcat:8.5.61-jdk8-openjdk

ENV USER root

WORKDIR /root/

COPY /home/cyborg/Dockers/tasks/tasks-backend.war /usr/local/tomcat/webapps/tasks-backend.war

COPY /home/cyborg/Dockers/tasks/tasks.war /usr/local/tomcat/webapps/tasks.war

EXPOSE 8080

CMD /usr/local/tomcat/bin/startup.sh && tail -f /usr/local/tomcat/logs/catalina.out