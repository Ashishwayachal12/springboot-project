FROM maven

WORKDIR /app

COPY . .

RUN mvn package

RUN mv target/*.jar app.jar
#Expose on 9090 port
ENTRYPOINT ["java", "-jar", "app.jar"]
