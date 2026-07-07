@echo off
echo =========================================
echo Deploying GoSafe V2 Backend with Docker
echo =========================================

echo.
echo Building and starting containers...
docker-compose up --build -d

echo.
echo Container Status:
docker-compose ps

echo.
echo =========================================
echo Done! Application is running on http://localhost:8080
echo =========================================
pause
