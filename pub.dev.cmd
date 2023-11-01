@echo off
if "%1" == "" goto usage
cd %1

echo Step 1: markdown table of contents
call markdown-toc -i README.md

rem We've done this fix and also doing it in gen.cmd, so no new issues should occur
rem echo Step 2: dart fix
rem call dart fix --dry-run
rem call dart fix --apply

echo Step 3: dart pub publish
echo y | call dart pub publish
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