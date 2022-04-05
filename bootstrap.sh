#!/usr/bin/env bash

# run install.sh
./install.sh

homedir=$1

# dotfiles directory
dotfiledir=${homedir}/.dotfiles

# list of files/folders to symlink in ${homedir}
# add more folders/files to be symlinked below
files=".gitignore .npmrc .ssh"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/${file} ${homedir}/${file}
done
