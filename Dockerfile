# Use Amazon Corretto 21 as the base image
FROM amazoncorretto:21

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the container
COPY . /app

# If you’re using Maven, build the project
RUN ./mvnw clean package -DskipTests

# Expose the port on which the app will run
ENV PORT 8080
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "target/your-app.jar"]
