@echo off
java -cp tools\target\eliudtools-1.0.0-jar-with-dependencies.jar io.eliud.depends.Depends -g %1 -p eliud_ -u https://pub.dev/packages/ -d "### Direct dependencies" -i "### Transitive dependencies" -h "### Dev dependencies" -f README.md
