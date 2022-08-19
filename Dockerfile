FROM maven:3-adoptopenjdk-8 as build_step
WORKDIR /sample
COPY . .
RUN mvn clean package

FROM tomcat:8
copy --from=build_step /sample/target/*.war /usr/local/tomcat/webapps

