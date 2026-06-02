@echo off
cd /d C:\Users\cris\Desktop\UDA

echo === Pull UDA ===
git pull

echo === Add & Commit ===
git add .
git commit -m "Update UDA"

echo === Push ===
git push

pause
