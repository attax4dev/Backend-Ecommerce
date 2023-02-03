# Use an official openjdk image as the base image
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the working directory
COPY . /app

# Build the spring boot application
RUN ./gradlew build

# Copy the built jar file to the working directory
COPY build/libs/ecommercebackend-0.0.1-SNAPSHOT.jar /app

# Set environment variables
ENV JAVA_OPTS=""

# Expose port 8080
EXPOSE 8080

# Start the application
ENTRYPOINT ["java","-jar","/app/ecommercebackend-0.0.1-SNAPSHOT.jar"]
