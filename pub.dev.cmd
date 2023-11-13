@echo off
if "%1" == "" goto usage
cd %1

echo Step 1: markdown table of contents
call markdown-toc -i README.md

rem echo Step 2: generate doc
rem set FLUTTER_ROOT=c:\dev\flutter
rem rmdir doc\api /q /s
rem call dartdoc --no-include-source --format md --no-verbose-warnings

rem echo Step 3: pana
rem call pana %1

echo Step 4: dart pub publish
echo y | call dart pub publish

echo Step 5: Finish
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

echo example
echo cd \eliud
echo bin\pub.dev.cmd eliud_core

:theend
echo bye bye