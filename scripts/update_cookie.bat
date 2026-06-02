@echo off
cd /d "C:\Users\cris\Desktop\UDA\projects\HTML games\cookie"

echo === Pull CookieClicker ===
git pull

echo === Add & Commit ===
git add .
git commit -m "Update CookieClicker"

echo === Push ===
git push

pause
