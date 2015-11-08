# KibanaAuth 
LDAP Authentication in Kibana

##Introduction
This project provides LDAP authentication in Kibana using Spring security framework

##Requirements
1. JDK 1.6
2. Maven 3
3. Apache Tomcat 7

## Build, configuration and deployment
1.    Clone the project: ``git clone https://github.com/amitanjani/KibanaAuth.git``
2.    Update ldap server url and rdn-ou-active in ```kibana\src\main\webapp\WEB-INF\spring-security.xml```
3.    Update ```kibana\src\main\resources\properties\authorised_user.properties``` with ldap UID (i.e. To give kibana access permission to selected group of people)
4.    Update elasticsearch server url in ```kibana\src\main\resources\config.js```
5.    Goto kibana folder and run ``mvn clean install``
6.    Copy generated war file(in kibana\target) in tomcat server webapp folder and start the server.
7.    Open url ``http://localhost:8082/kibana`` in browser.

If you find any issue in using the application, Comment below abc.

