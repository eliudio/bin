@echo off
if "%1" == "" goto usage
echo ********************************** %1 **********************************

cd %1
if "%2"=="PUB_GET" call flutter pub get
del lib\model\*.dart
call flutter packages pub run build_runner build --delete-conflicting-outputs 
cd ..

goto theend

:usage
echo gen.cmd 
echo.
echo what?
echo generates eliud dart helper classes (model, entity, firestore, cache, ...) for a package
echo.
echo usage: gen.cmd subdirectory
echo where: subdirectory is the directory for which to generate these classes
goto theend
echo.
echo example
echo cd \eliud
echo bin\gen.cmd eliud_core

:theend
echo bye bye


