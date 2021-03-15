#! /bin/bash

# creates symbolic links for my dotfiles so all files can stay in ~/dotfiles
# WARNING: this script will overwrite existing files that match the filenames from the dotfiles repo!
# tested with bash, zsh and sh. other shells may not work

dotdir=~/dotfiles   # specify the FULL path to the repo here
laptop=0

# make sure to start in the home directory
cd ~/ || exit 1

# check if dotfiles repo exists
if [ ! -d ${dotdir} ]; then
    echo "${dotdir} not found, either clone the git repo or specift the correct path above."
    echo "Exiting."
    exit 1
fi

# start creating symlinks
# files in ~/
files=(.bashrc .zshrc .profile .vimrc)

for i in ${files[*]}; do
    if [ -f ${i} ]; then
        rm -f ${i}
    fi
    ln -sf ${dotdir}/${i} ${i}
done

# install moc first and  start it once to avoid errors!
if [ ! -d ~/.moc ]; then
    mkdir -p ~/.moc
fi

cd ~/.moc || exit 1

# MOC
moc_files=(eqsets themes config equalizer)

for i in ${moc_files[*]}; do
    if [ -d ${i} ] || [ -f ${i} ]; then
        rm -rf ${i}
    fi
    ln -sf ${dotdir}/moc/"${i}" "${i}"
done

if [ ! -d ~/.config ]; then
    mkdir -p ~/.config
fi

cd ~/.config || exit 1

# files and folders within ~/.config
config_dirs=(alacritty awesome neofetch zathura)

for i in ${config_dirs[*]}; do
    if [ -d ${i} ] || [ -f ${i} ]; then
        rm -rf ${i}
    fi
    ln -sf ${dotdir}/"${i}" "${i}"
done

if [ ! -d nvim ]; then
    mkdir -p nvim
fi

cd nvim || exit 1

ln -sf ${dotdir}/nvim/init.vim init.vim

cd || exit 1
echo "All done, no errors."

exit 0
