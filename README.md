# KibanaAuth 
LDAP Authentication in Kibana

##Introduction
This project provide LDAP authentication in Kibana using Spring security framework

##Requirements
1. JDK 1.6
2. Maven 3
3. Apache Tomcat 7

## Build, configuration and deployment
1.    Clone the project: ``git clone https://github.com/amitanjani/KibanaAuth.git``
2.    Open kibana\src\main\webapp\WEB-INF\spring-security.xml and replace ldap server url and rdn-ou-active with commented line.
3.    Open kibana\src\main\resources\properties\authorised_user.properties and authorised ldap UID (to give permission to selected group of people)
4.    goto kibana folder and run mvn clean install
5.    Copy generated war file(in kibana\target) in tomcat server webapp folder and start the server.
6.    Open url http://localhost:8082/kibana in browser.

