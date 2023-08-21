# bin

Helper scripts for eliud. These scripts must be run from the root eliud directory. The root eliud directory
is where the eliud repositories have been cloned into. In other words, the directory containing eliud_core, eliud_pkg_*, etc

## pub.dev.cmd

### what?
script to push contents to pub.dev

### usage: 
pub.dev.cmd subdirectory
where: subdirectory is the directory to push to pub.dev

### example
cd \eliud
bin\pub.dev.cmd eliud_core

## check-git.cmd

### what?
script to quickly push changes to github

### usage
check-git.cmd subdirectory

where: subdirectory is the directory to push to github

### checkall-git
runs check-git on all eliud packages

## gen.cmd
### what?
generates eliud dart helper classes (model, entity, firestore, cache, ...) for a package

### usage: 
gen.cmd subdirectory
where: subdirectory is the directory for which to generate these classes

## gen-all.cmd
runs gen.cmd on all eliud packages
