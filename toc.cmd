@echo off
echo %1
rem Make sure %1\README.md has the following line where you want the TOC inserted:
rem <!-- toc -->
rem <!-- tocstop -->
markdown-toc -i %1\README.md
