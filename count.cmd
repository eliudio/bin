@echo off
if "%1" == "" goto usage
echo ********************************** %1 **********************************

cd %1
dir *.dart /s | find "File(s)"
cd ..

goto theend

:usage
echo count.cmd 
echo.
echo what?
echo count the amount of dart files
echo.
echo usage: count.cmd subdirectory
echo where: subdirectory is the directory for which to run the count
echo.
echo example
echo cd \eliud
echo bin\count.cmd eliud_core
goto theend

:theend
echo bye bye
