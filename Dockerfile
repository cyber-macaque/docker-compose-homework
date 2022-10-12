FROM maven:latest AS build
RUN git clone https://github.com/spring-projects/spring-petclinic
WORKDIR /spring-petclinic
RUN sed -i 's/localhost/mysql/g' src/main/resources/application-mysql.properties
RUN mvn spring-javaformat:apply clean install

FROM alpine:3.16
RUN apk add --no-cache openjdk11-jre
COPY --from=build /spring-petclinic/target /spring-petclinic/target
WORKDIR /spring-petclinic
RUN adduser -D spring-petclinic && chown spring-petclinic -R /spring-petclinic
USER spring-petclinic
CMD ["java", "-jar", "target/spring-petclinic-2.7.3.jar"]