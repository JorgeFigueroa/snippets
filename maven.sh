https://javatutorial.net/set-java-home-windows-10
https://www.mkyong.com/maven/how-to-install-maven-in-windows/
https://maven.apache.org/download.cgi

JAVA_HOME  /path_install_JDK
M2_HOME    /path_maven
PATH	%JAVA_HOME%/bin;%M2_HOME%/bin

set system variable M2_HOME = B:\apache-maven-3.3.9 
set variable M2 = %M2_HOME%\bin
CMD mvn

nano ~/.bash_profile
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH
export M2_HOME=/path/apache-maven-3.6.0
export PATH=$PATH:$M2_HOME/bin
mvn -v



#buscar plantillas de proyectos
mvn archetype:generate
mvn archetype:generate -Dfilter=org.apache:struts

#https://maven.apache.org/archetypes/maven-archetype-quickstart/
mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart

groupId:      es.empresa.maven
artifactId:   nombre_proyecto
version:      1.0-SNAPSHOT
pachage       es.empresa.maven

mvn install
.m2/repository/es/empresa/maven/nombre_proyecto


mvn clean  #Delete /target
mvn install -Dmaven.test.skip=true  ##Skipping Tests


mvn compiler:compile    #compiler plugin 
mvn compiler:testCompile

mvn clean compiler:compile surefire:test    #Surefire plugin
mvn clean compiler:testCompile surefire:test

mvn clean package assembly:single       #Assembly plugin   sin executions
mvn clean package

mvn clean package –P produccion     #profile


mvn site:site   #Generación de la documentación



#Creando archetypes 
mvn archetype:create-from-project
cd proyectoWeb/target/generated-sources/archetype
mvn clean install
mvn archetype:generate –DarchetypeCatalog=local  -Dfilter=es.adama



https://www.sonatype.com/download-oss-sonatype
cd /path/nexus-3.18.1-01/bin
./nexus install
./nexus start       http://localhost:8081/



mvn archetype:generate -Dfilter=org.apache.maven.archetypes:
mvn install	deploy	.m2/project/project.jar


mvn –encrypt-master-password
.m2/settings-security.xml

















