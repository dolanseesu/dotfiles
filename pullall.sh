#!/usr/bin/env bash

# this script goes through all my git repos and executes a git pull

# array with dirs
git_dirs=(dolanseesu.github.io dotfiles markdown python studium)

# ${dirs[@]} - list elements of array
# ${!dirs[@]} - list indices of array

cd ~/ || exit 1

for i in "${git_dirs[@]}"; do
    if [ -d "$i" ]; then
        echo -e "\ncd into ${i}..."
        cd ~/"$i" || exit 1
        git pull
        cd || exit 1
    fi
done

cd ~/ || exit 1
echo -e "\nAll done."
exit 0
