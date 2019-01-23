java -version
javac -version

https://maven.apache.org/download.cgi
nano ~/.bash_profile
mvn -v


#### TOMCAT
dowload  http://tomcat.apache.org/download-80.cgi
nano /etc/profile
export CATALINA_HOME=/home/ivan/servidor/apache-tomcat-8.0.30

$ source /etc/profile
conf/tomcat-users.xml 
    <role rolename="manager-gui"/>
    <user username="admin" password="admin" roles="manager-gui"/>
    <role rolename="admin-gui"/>
    <user username="admin" password="admin" roles="admin-gui"/>
    <role rolename="manager-script"/>
    <user username="admin" password="admin" roles="manager-script"/>
    <role rolename="manager-jmx"/>
    <user username="admin" password="admin" roles="manager-jmx"/>
    <role rolename="manager-status"/>
    <user username="admin" password="admin" roles="manager-status"/>

$ cd apache-tomcat-8.0.30/bin
$ ./startup.sh
$ ./shutdown.sh
http://localhost:8080.
