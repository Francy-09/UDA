@echo off
cd /d C:\Users\cris\Desktop\UDA\projects\malacarne_francesco

echo === Pull LNDP ===
git pull

echo === Add & Commit ===
git add .
git commit -m "Update LeNoteDellaPassione"

echo === Push ===
git push

pause
