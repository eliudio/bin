@echo off
cd %1
git add .
git commit  -m "Prepare for pub.dev"
git push
echo y | dart pub publish
cd ..
