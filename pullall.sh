#!/bin/bash

# array with dirs

dirs=(dolanseesu.github.io dotfiles markdown python studium)

# ${dirs[*]} - list elements of array
# ${!dirs[*]} - list indices of array

for i in ${dirs[*]}; do
    if [[ -d $i ]]; then
        echo "cd into $i..."
        cd ~/$i
        git pull
        cd
    fi
done
