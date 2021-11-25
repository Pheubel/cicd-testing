# VSH2-package-manager-prototype
a prototype package manager plugin to allow installing of VSH2 bosses


## Building the plugin
inside this repository are three build scripts: `build.cmd`, `build.ps1` and `build.sh`, these scripts aim to make building a little bit easier to get everything all set up. They all follow the same expected argument syntax: `<path/to/spcomp> [path/to/sources] [-switches]`
`<path/to/spcomp>` is the path to where you have the sourcepawn compiler executable stored.
`[path/to/sources]` are the paths to the source pawn scripts, they should be either a full path or a path relative to the project diretory.
`[-switches]` are the extra switches passed to the compiler, `-o`, `-O` and `-v` are already handled inside the scripts.

To use the scripts first you should change directory to the project's root directory, from there you can use one of the following commands to build, be sure to replace `<path/to/spcomp>` with an actual path!
### Command prompt
```
./build.cmd <path/to/spcomp> 'scripting/vshPackageManager.sp' -i='scripting/include'
```
### Powershell
```
./build.ps1 <path/to/spcomp> 'scripting/vshPackageManager.sp' -i='scripting/include'
```
### Batch
```
./build.sh <path/to/spcomp> 'scripting/vshPackageManager.sp' -i='scripting/include'
```

Once built, the plugin should be in `<projectRoot>/build`.
