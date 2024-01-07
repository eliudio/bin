@echo off
if "%1" == "" goto usage

cd %1
call flutter clean
if "%2"=="PUB_GET" call flutter pub get
if "%2"=="PUB_GET" call flutter pub upgrade
call dart fix --apply
call dart format .
cd ..

goto theend

:usage
echo fix-format.cmd 
echo.
echo what?
echo fix warnings and format the code
echo.
echo usage: fix-format.cmd subdirectory
echo where: subdirectory is the directory which needs fixing / formatting
echo.
echo example
echo cd \eliud
echo bin\fix-format.cmd eliud_core
goto theend

:theend

