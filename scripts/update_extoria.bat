@echo off
cd /d "C:\Users\cris\Desktop\UDA\projects\HTML games\extoria"

echo === Pull ExToria ===
git pull

echo === Add & Commit ===
git add .
git commit -m "Update ExToria"

echo === Push ===
git push

pause
