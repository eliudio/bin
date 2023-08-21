@echo off
if "%1" == "" goto usage
cd %1
git add .
git commit  -m "Prepare for pub.dev"
git push
echo y | dart pub publish
cd ..

goto theend

:usage
echo pub.dev.cmd 
echo.
echo what?
echo script to push contents to pub.dev
echo.
echo usage: pub.dev.cmd subdirectory
echo where: subdirectory is the directory to push to pub.dev
goto theend
echo.
echo example
echo cd \eliud
echo bin\pub.dev.cmd eliud_core

:theend
echo bye bye