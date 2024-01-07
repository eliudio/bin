@echo off
if "%1" == "" goto usage

echo Step 1: depends diagram
call depends %1

echo Step 2: depends links
call depends-links %1

echo Step 3: markdown table of contents
cd %1
call markdown-toc -i README.md

echo Step 4: dart pub publish
echo y | call dart pub publish

echo Step 5: Finish
cd ..

rem not doing dartdoc / pana
rem dartdoc --no-include-source --format md --no-verbose-warnings
rem pana

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