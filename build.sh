#!/bin/bash

current_dir=$PWD

script_dir=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

cd "$script_dir"

sp_executable="$1"
out_path="$script_dir/build"
include_paths=""
local_include_path="-i='include'"
sp_optimize="-O2"
sp_verbose="-v2"

for a in "${@:2}"
do
    case $a in -i=*)
        include_paths="$include_paths $a"
    esac
done

for script in "${@:2}"
do
    case $script in *sp)
        script_name="${script%.*}"
        script_name="${script_name##*/}"
        outArg="-o=$out_path/$script_name.smx"

        "$sp_executable" $script "$outArg" $local_include_path $include_paths $sp_optimize $sp_verbose
    esac
done

#"$sp_executable" $plugin_script $out_path $include_path $local_include_path $sp_optimize $sp_verbose
