# ==============================================================================
# Build Stage: Package the Spring Boot application using Maven
# ==============================================================================
FROM maven:3.9.5-eclipse-temurin-17-alpine AS build

WORKDIR /app

# Copy the pom.xml first to fetch dependencies and cache them
COPY pom.xml .

# Fetch all dependencies to speed up future builds (cached layer)
RUN mvn dependency:go-offline -B

# Copy the source code and build the JAR
COPY src ./src
RUN mvn clean package -DskipTests

# ==============================================================================
# Run Stage: Create a lightweight runtime image with Eclipse Temurin JRE 17
# ==============================================================================
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Create a dedicated directory to store the H2 database file persistently
RUN mkdir -p /app/data

# Copy the compiled JAR file from the build stage
COPY --from=build /app/target/*.jar app.jar

# Expose the default port defined in application.properties (8080)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
