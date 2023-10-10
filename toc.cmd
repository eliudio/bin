@echo off
echo Make sure %1\README.md has the following line where you want the TOC inserted:
echo "<!-- toc -->"
rem pause
markdown-toc -i %1\README.md
