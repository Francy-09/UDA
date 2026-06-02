@echo off
title Crea nuovo capitolo ExToria

echo ================================
echo   CREA NUOVO CAPITOLO EXTORIA
echo ================================
echo.
echo 1) Su GitHub crea PRIMA una nuova repo vuota
echo    es: ExToria-Capitolo3
echo.
pause

set /p REPONAME=Nome repo GitHub (es: ExToria-Capitolo3): 
set /p FOLDERNAME=Nome cartella locale (senza spazi, es: capitolo3): 

echo.
echo Repo GitHub: %REPONAME%
echo Cartella locale: %FOLDERNAME%
echo.
pause

cd /d "C:\Users\cris\Desktop\UDA\projects\HTML games\extoria"

mkdir "%FOLDERNAME%"
cd "%FOLDERNAME%"

git init
git remote add origin https://github.com/Francy-09/%REPONAME%.git

git add .
git commit -m "Initial commit" 2>nul

git branch -M main
git push -u origin main

cd ..
git submodule add https://github.com/Francy-09/%REPONAME%.git "%FOLDERNAME%"

git add .
git commit -m "Added new ExToria chapter: %REPONAME%"
git push

cd /d "C:\Users\cris\Desktop\UDA"
git add .
git commit -m "Updated ExToria submodule pointer for %REPONAME%"
git push

echo.
echo ================================
echo   CAPITOLO CREATO E COLLEGATO
echo ================================
pause
