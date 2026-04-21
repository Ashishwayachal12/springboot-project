FROM maven

WORKDIR /app

COPY . .

RUN mvn package

RUN mv target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
