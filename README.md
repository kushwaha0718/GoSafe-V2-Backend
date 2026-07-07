# GoSafe V2 Backend

Backend application for GoSafe routing and safety website, built using Spring Boot 3.1.5, Spring Security, JWT authentication, and Spring Data JPA with an H2 database.

## Prerequisites

- [Docker](https://www.docker.com/products/docker-desktop/) and [Docker Compose](https://docs.docker.com/compose/)
- [Java 17 JDK](https://adoptium.net/temurin/releases/?version=17) (if building/running locally outside of Docker)
- [Maven 3.x](https://maven.apache.org/) (if building locally outside of Docker)

---

## 🚀 Deployment with Docker (Recommended)

Docker handles compilation, packaging, and running the application with proper environment settings and database persistence automatically.

### 1. Build and Run the Container

Run the following command in the project root directory to build the Docker image and start the container in the background:

```bash
docker-compose up --build -d
```

### 2. Verify Container Status

Check if the application is running:

```bash
docker-compose ps
```

To view application logs in real-time:

```bash
docker-compose logs -f
```

### 3. Stop the Application

To stop the containers without deleting data:

```bash
docker-compose down
```

### 4. Database Persistence

The Docker container runs with a named volume `gosafe-db-data` mounted at `/app/data`. The database files (`gosafe_db.mv.db`, etc.) are persisted inside this volume, so your data will not be lost if you stop or update the container.

---

## 🛠️ Run Locally (Without Docker)

If you wish to run the project directly on your system for development:

### 1. Build the Project
```bash
mvn clean package -DskipTests
```

### 2. Run the Application
```bash
mvn spring-boot:run
```
The application will start on port `8080`.

---

## 📂 Project API Details

- **Base URL**: `http://localhost:8080`
- **H2 Console URL**: `http://localhost:8080/h2-console`
  - **JDBC URL**: `jdbc:h2:file:./gosafe_db` (or `jdbc:h2:file:/app/data/gosafe_db` inside Docker)
  - **Username**: `sa`
  - **Password**: *(leave blank)*

---

## 📤 Push Code to GitHub

Use the following commands to initialize Git locally and push this codebase to your repository:

```bash
# Initialize git repository
git init

# Add all files (including Docker configs and .gitignore)
git add .

# Commit changes
git commit -m "feat: add dockerization, gitignore, and deployment configurations"

# Rename branch to main
git branch -M main

# Add remote origin
git remote add origin https://github.com/kushwaha0718/GoSafe-V2-Backend.git

# Push code to GitHub
git push -u origin main
```
