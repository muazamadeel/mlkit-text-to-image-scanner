@echo off
REM Text Scanner - Upload to GitHub Script
REM =========================================

setlocal enabledelayedexpansion

echo.
echo ========================================
echo   ML Kit Text Scanner - GitHub Upload
echo ========================================
echo.

REM Set variables
set REPO_URL=https://github.com/muazamadeel/mlkit-text-to-image-scanner.git
set REPO_BRANCH=main

REM Check if git is installed
git --version >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Git is not installed or not in PATH
    echo Please install Git from https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [1/7] Configuring Git...
git config --global user.name "Muazam Adeel"
git config --global user.email "muazamadeel@example.com"
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to configure Git
    pause
    exit /b 1
)
echo ✓ Git configured

echo.
echo [2/7] Initializing repository...
git init
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to initialize repository
    pause
    exit /b 1
)
echo ✓ Repository initialized

echo.
echo [3/7] Adding remote origin...
git remote add origin %REPO_URL% 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo (Remote already exists, updating...)
    git remote set-url origin %REPO_URL%
)
echo ✓ Remote configured: %REPO_URL%

echo.
echo [4/7] Setting main branch...
git branch -M %REPO_BRANCH%
echo ✓ Branch set to: %REPO_BRANCH%

echo.
echo [5/7] Adding all files...
git add .
echo ✓ Files added

echo.
echo [6/7] Committing changes...
git commit -m "Initial commit: ML Kit Text Scanner App

- Flutter app for OCR text recognition
- Google ML Kit integration
- Camera and gallery image picker
- Copy to clipboard functionality
- Material Design 3 UI
- Professional README documentation

Co-authored-by: Copilot <223556219+Copilot@users.noreply.github.com>"

if %ERRORLEVEL% NEQ 0 (
    echo (No changes to commit or error occurred)
)

echo.
echo [7/7] Pushing to GitHub...
echo Please wait, this may take a moment...
echo.

git push -u origin %REPO_BRANCH%

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================
    echo   ✓ SUCCESS! Project uploaded to GitHub
    echo ========================================
    echo.
    echo Repository: %REPO_URL%
    echo Branch: %REPO_BRANCH%
    echo.
) else (
    echo.
    echo ========================================
    echo   ✗ ERROR: Failed to push to GitHub
    echo ========================================
    echo.
    echo Possible reasons:
    echo - You're not authenticated with GitHub
    echo - The repository doesn't exist on GitHub
    echo - You don't have permission to push
    echo.
    echo Solution:
    echo 1. Create the repository on GitHub first
    echo 2. Make sure you're logged in (use: git config --global user.name)
    echo 3. Check your GitHub SSH keys or personal access token
    echo.
)

pause
endlocal
