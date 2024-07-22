#!/bin/sh -l

envsubst '$DEPENDENCIES' < pom.xml.template > pom.xml

mkdir -p src/main/java/com/github/primejava/githubjavascript/
envsubst '$JAVA_SCRIPT' < GitHubJavaScript.java.template > src/main/java/com/github/primejava/githubjavascript/GitHubJavaScript.java

mvn package -DskipTests --batch-mode

chmod +r target/app.jar
java -jar target/app.jar
