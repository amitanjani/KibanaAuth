# KibanaAuth 
LDAP Authentication in Kibana

Introduction
This project provide LDAP authentication in Kibana using Spring security framework

Requirements:
1. JDK 1.6
2. Maven 3
3. Apache Tomcat 7

Build
1. Clone the project: git clone https://github.com/amitanjani/KibanaAuth.git

Configuration
1.  Open kibana\src\main\webapp\WEB-INF\spring-security.xml and replace ldap server url and rdn-ou-active with commented line:
      <beans:constructor-arg value="<!-- ldap url + rdn-ou-active -->" />
2.  Open kibana\src\main\resources\properties\authorised_user.properties and authorised ldap UID (to give permission to selected group of people)
3.  goto kibana folder and run mvn clean install
4.  kibana.war will be created in kibana/target folder, copy war file to tomcat webapp folder and start the server.
5.  Open url http://localhost:8082/kibana in browser.

