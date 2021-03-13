#!/bin/bash

# array with dirs

dirs=(dolanseesu.github.io dotfiles markdown python studium)

echo ${dirs[*]}

# ${dirs[*]} - list elements of array
# ${!dirs[*]} - list indices of array
for i in ${dirs[@]}
    do if [[ -d $i ]]
    then
        echo "cd into $i..."
        cd ~/$i
        git pull
        cd
    fi
done

#cd ~/dotfiles && git pull &&
#cd ~/markdown && git pull &&
#cd ~/studium && git pull &&
#cd ~/python && git pull && cd
