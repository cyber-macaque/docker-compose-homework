FROM alpine:3.16

WORKDIR /usr/share/webapps/jenkins

RUN apk add --no-cache openjdk11-jre jenkins

ENTRYPOINT ["java", "-jar", "jenkins.war"]
