https://maven.apache.org/download.cgi
nano ~/.bash_profile
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH
export M2_HOME=/usr/local/apache-maven-3.6.0
export PATH=$PATH:$M2_HOME/bin

mvn -v

#plantillas de proyectos
mvn archetype:generate
mvn archetype:generate -Dfilter=org.apache:struts

#https://maven.apache.org/archetypes/maven-archetype-quickstart/
mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart

groupId:      es.empresa.maven
artifactId:   nombre_proyecto
version:      1.0-SNAPSHOT
pachage       es.empresa.maven

mvn install
.m2 ▸ repository ▸ es ▸ empresa ▸ maven ▸ nombre_proyecto
