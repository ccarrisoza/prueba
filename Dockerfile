FROM tomcat:8.5

ADD ./webapp/target/*.war /usr/local/tomcat/webapss

EXPOSE 8080

CMD ["catalina.sh", "run"]