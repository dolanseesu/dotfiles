#!/usr/bin/env bash

# creates symbolic links for my dotfiles so all files can stay in ~/dotfiles
# WARNING: this script will overwrite existing files that match the filenames from the dotfiles repo!
# tested with bash, zsh and sh. other shells may not work

dotdir=~/dotfiles   # specify the FULL path to the repo here
laptop=false

# make sure to start in the home directory
cd ~/ || exit 1

echo "Configure dotfiles for the laptop? (y/n)"
read usrcmd

if [ "$usrcmd" = "y" ]; then
    laptop=true
fi

# check if dotfiles repo exists
if [ ! -d "$dotdir" ]; then
    echo "${dotdir} not found, either clone the git repo or specift the correct path above."
    echo "Exiting."
    exit 1
fi

# start creating symlinks
# files in ~/
files=(.bashrc .zshrc .profile .vimrc)

for i in "${files[@]}"; do
    if [ -f "$i" ]; then
        rm -f "$i"
    fi
    ln -sf "$dotdir"/"$i" "$i"
done

# MOC
# install moc first and  start it once to avoid errors!
if [ "$laptop" = false ]; then
    if [ ! -d ~/.moc ]; then
        mkdir -p ~/.moc
    fi

    cd ~/.moc || exit 1

    moc_files=(eqsets themes config equalizer)

    for i in "${moc_files[@]}"; do
        if [ -d "$i" ] || [ -f "$i" ]; then
            rm -rf "$i"
        fi
    ln -sf "$dotdir"/moc/"$i" "$i"
    done
fi

# .config
if [ ! -d ~/.config ]; then
    mkdir -p ~/.config
fi

cd ~/.config || exit 1

if [ "$laptop" = true ]; then
    config_dirs=(neofetch zathura)  # only create symlinks
    copy_dirs=(alacritty awesome)   # copy these directories
    
    for i in "${copy_dirs[@]}"; do
        if [ -d "$i" ] || [ -f "$i" ]; then
            rm -rf "$i"
        fi
        cp -r "$dotdir"/"$i" .
    done
    
    # put laptop dotfiles in place
    rm -f alacritty/alacritty.yml
    mv alacritty/alacritty_laptop.yml alacritty/alacritty.yml
    rm -f awesome/rc.lua
    mv awesome/rc_laptop.lua awesome/rc.lua
else
    config_dirs=(alacritty awesome neofetch zathura)
fi

for i in "${config_dirs[@]}"; do
    if [ -d "$i" ] || [ -f "$i" ]; then
        rm -rf "$i"
    fi
    ln -sf "$dotdir"/"$i" "$i"
done

if [ ! -d nvim ]; then
    mkdir -p nvim
fi

cd nvim || exit 1

ln -sf "$dotdir"/nvim/init.vim init.vim

cd ~/ || exit 1
echo "All done, no errors."

exit 0
