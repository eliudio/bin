rem @echo off
if "%1" == "" goto usage
echo ********************************** %1 **********************************

xcopy %1 %1.pana /d
echo D | xcopy %1 %1.pana /s/e
cd %1.pana
cd

goto theend

:usage
echo pana.cmd 
echo.
echo what?
echo See: https://www.topcoder.com/thrive/articles/deploy-your-dart-package-with-all-pub-points
echo.
echo usage: pana.cmd subdirectory
echo where: subdirectory is the directory for which to run pana
echo.
echo example
echo cd \eliud
echo bin\pana.cmd eliud_core
goto theend

:theend
echo bye bye


