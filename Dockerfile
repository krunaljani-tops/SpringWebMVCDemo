# ==============================
# Stage 1 — Build the Application
# ==============================
FROM maven:3.9.4-eclipse-temurin-17 AS builder
WORKDIR /app

# Copy the pom.xml and download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy the rest of the project and build
COPY src ./src
RUN mvn clean package -DskipTests

# ==============================
# Stage 2 — Run the Application
# ==============================
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Copy the built JAR from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Expose port (default 8080 for Spring Boot)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]
