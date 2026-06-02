@echo off
title Update Abandoned Fabbric

cd /d "C:\Users\cris\Desktop\UDA\projects\HTML games\extoria\abandoned_fabbric"

git pull
git add .
git commit -m "Update Abandoned Fabbric"
git push

cd /d "C:\Users\cris\Desktop\UDA\projects\HTML games\extoria"
git add .
git commit -m "Updated Abandoned Fabbric submodule pointer"
git push

cd /d "C:\Users\cris\Desktop\UDA"
git add .
git commit -m "Updated ExToria submodule pointer"
git push

pause
