#!/bin/bash
# Program: myscript.sh
# Author: Brian Rodriguez
# Date: 2026-04-09
# Description: Prints the absolute path and contents of a directory provided as a command line argument.

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

dir_arg="$1"

# Expand a leading ~ so quoted and unquoted home paths both work.
if [[ "$dir_arg" == ~* ]]; then
    dir_arg="${HOME}${dir_arg:1}"
fi

if [ ! -d "$dir_arg" ]; then
    echo "Error: '$1' is not a valid directory."
    exit 1
fi

abs_path="$(cd "$dir_arg" && pwd -P)"
echo "$abs_path"
ls "$dir_arg"
