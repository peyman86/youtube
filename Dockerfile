# Use Amazon Corretto 21 as the base image
FROM openjdk:21-jdk-slim

# Install required utilities
RUN apt-get update && apt-get install -y tar curl git

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the container
COPY . /app

# If you’re using Maven, build the project
RUN ./mvnw clean package -DskipTests

# Expose the port on which the app will run
ENV PORT 8081
EXPOSE 8081

# Start the application
CMD ["java", "-jar", "target/youtubeDownloader-0.0.1-SNAPSHOT.jar"]
