# Step 1: Use an official Java runtime as a base image
FROM openjdk:17-jdk-alpine

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy the JAR file into the container
COPY target/docker-internship-0.0.1-SNAPSHOT.jar app.jar

# Step 4: Set the DEVOPS environment variable
ENV DEVOPS=<username>

# Step 5: Expose the application's port
EXPOSE 8080

# Step 6: Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
