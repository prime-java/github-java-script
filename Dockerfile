FROM maven:3.9.8-amazoncorretto-21

RUN yum install -y gettext

WORKDIR /code

COPY pom.xml.template pom.xml.template
COPY GitHubJavaScript.java.template GitHubJavaScript.java.template
COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["/code/entrypoint.sh"]
