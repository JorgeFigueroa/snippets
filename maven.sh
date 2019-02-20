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
