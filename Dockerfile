# Use an official Java runtime as the base image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the compiled jar file from the host to the container
COPY ecommercebackend-0.0.1-SNAPSHOT.jar /app/

# Run the jar file
CMD ["java", "-jar", "ecommercebackend-0.0.1-SNAPSHOT.jar"]

# Expose port 8080
EXPOSE 8080
