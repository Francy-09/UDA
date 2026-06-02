@echo off
title Update Roam0120

cd /d "C:\Users\cris\Desktop\UDA\projects\HTML games\extoria\roam0120"

git pull
git add .
git commit -m "Update Roam0120"
git push

cd /d "C:\Users\cris\Desktop\UDA\projects\HTML games\extoria"
git add .
git commit -m "Updated Roam0120 submodule pointer"
git push

cd /d "C:\Users\cris\Desktop\UDA"
git add .
git commit -m "Updated ExToria submodule pointer"
git push

pause
