@echo off
echo %1
cd %1
call git push
cd ..
