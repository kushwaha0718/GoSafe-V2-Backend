@echo off
echo =========================================
echo Pushing GoSafe V2 Backend to GitHub
echo =========================================

echo.
echo [1/5] Initializing Git repository...
git init

echo.
echo [2/5] Adding all files to staging...
git add .

echo.
echo [3/5] Committing changes...
git commit -m "feat: add dockerization, gitignore, and deployment configurations"

echo.
echo [4/5] Setting branch to main...
git branch -M main

echo.
echo [5/5] Setting remote origin and pushing...
git remote add origin https://github.com/kushwaha0718/GoSafe-V2-Backend.git
git push -u origin main

echo.
echo =========================================
echo Done! Code pushed to GitHub successfully.
echo =========================================
pause
