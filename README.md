# bin

Helper scripts for eliud. These scripts must be run from the root eliud directory. The root eliud directory
is where the eliud repositories have been cloned into. In other words, the directory containing eliud_core, eliud_pkg_*, etc

Install: to be able to use these, make sure to also clone repository tools and build as per README instructions

## git commands

|command|What?|Parameters                   |
|-------|-----|-----------------------------|
|status.cmd|runs git status on all eliud directories|/|
|add.cmd|runs git add . on all eliud directories|/|
|push.cmd|runs git push all eliud directories|/|
|commit.cmd|runs git commit on all directories.|Commit message|

## change version commands

|command|What?|Parameters                   |
|-------|-----|-----------------------------|
|changeversion.cmd|changes the version of a package (and referencing packages)|package, version|
|bumpversions.cmd|bumps the versions of all packages (and referencing packages)|/|
|listversions.cmd|list the versions of all packages|/|

## pub.dev commands
### pub.dev.cmd

#### what?
script to push contents to pub.dev

#### usage: 
pub.dev.cmd subdirectory, where: subdirectory is the directory to push to pub.dev

#### example
```
cd \eliud
bin\pub.dev.cmd eliud_core
```

### pub.dev-all.cmd
runs pub.dev.cmd on all eliud packages

#### usage: 
pub.dev-all.cmd

#### example
```
cd \eliud
pub.dev-all.cmd
```

## code generation tools

### gen.cmd
#### what?
generates eliud dart helper classes (model, entity, firestore, cache, ...) for a package

#### usage: 
gen.cmd subdirectory, where: subdirectory is the directory for which to generate these classes

#### example
```
cd \eliud
gen.cmd eliud_core
```

### gen-all.cmd
runs gen.cmd on all eliud packages

#### usage: 
gen-all.cmd

#### example
```
cd \eliud
gen-all.cmd
```

## dependency diagrams

### depends.cmd
generates dependency diagram for a package

#### usage: 
depends.cmd subdirectory, subdirectory is the directory for which to generate this dependency diagram

#### result: 
depends.jpg file in that directory is created/updated

#### example
```
cd \eliud
bin\depends.cmd eliud_core
```

### depends-all.cmd
runs depends.cmd on all eliud packages

#### usage: 
depends-all.cmd

#### example
```
cd \eliud
depends-all.cmd
```


