# Använd en officiell Java-basbild
FROM openjdk:17-jdk

# Ange arbetsmapp i containern
WORKDIR /app

# Kopiera .jar-filen från din byggmapp till containern
COPY demo/build/libs/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar

# Sätt kommandot för att köra din Java-applikation
ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]

