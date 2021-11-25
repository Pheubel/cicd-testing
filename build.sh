#!/bin/bash

current_dir=$PWD

script_dir=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

cd "$script_dir"

sp_executable="$1"
plugin_script="src/vshPackageManager.sp"
out_path="-o='$script_dir'"
include_path="-i='"$2"'"
local_include_path="-i='include'"
sp_optimize="-O2"
sp_verbose="-v2"

"$sp_executable" $plugin_script $out_path $include_path $local_include_path $sp_optimize $sp_verbose