# Use Amazon Corretto 21 as the base image
FROM openjdk:21-jdk-slim
WORKDIR /app
# Install Maven
RUN apt-get update && apt-get install -y maven
# Copy dependencies
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy project files
COPY src ./src
# Build the JAR
RUN mvn clean install
# Build the JAR
# Start the application
CMD ["java", "-jar", "target/youtubeDownloader-0.0.1-SNAPSHOT.jar"]
