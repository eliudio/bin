@echo off
if "%1" == "" goto usage
cd %1

git status
git add .
git commit -m "Update"
git push
cd ..

goto theend

:usage
echo check-git.cmd 
echo.
echo what?
echo script to quickly push changes to github
echo.
echo usage: check-git.cmd subdirectory
echo where: subdirectory is the directory to push to github
goto theend
echo.
echo example
echo cd \eliud
echo bin\check-git.cmd eliud_core

:theend
echo bye bye