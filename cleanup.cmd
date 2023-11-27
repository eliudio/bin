@echo off
if "%1" == "" goto usage
echo ********************************** %1 **********************************

cd %1
call flutter pub get
call flutter pub upgrade
call dart fix --apply
call dart format .
cd ..

goto theend

:usage
echo cleanup.cmd 
echo.
echo what?
echo cleans up the package, formats, fixes warnings, ...
echo.
echo usage: cleanup.cmd subdirectory
echo where: subdirectory is the directory for which to run the cleanup
echo.
echo example
echo cd \eliud
echo bin\cleanup.cmd eliud_core
goto theend

:theend
echo bye bye
