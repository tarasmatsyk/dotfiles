#!/bin/bash
############################
# install.sh
# This script creates symlings from the home directory to any desired dotfiles in ~/dotfiles
###########################

############## Variables

newdir=~/dotfiles						# dotfiles directory
olddir=~/dotfiles_old			# old dotfiles backup directory
files="bashrc "			# list of files/folders to symlink in homedir
vimdir=~/dotfiles/.vim
oldvimdir=~/dotfiles_old/.vim
###########################

if [[ $1 = "skipC" ]]; then
# install required components
	echo "Calling aptget.sh script"
	bash ./aptget.sh
fi

# 1. Create backup dirs in homedir
echo "changing to Home ~"
cd ~
echo "create backup dirs"
mkdir -p $olddir
mkdir -p $oldvimdir
echo "...done"

# 2. Move all files into backup dirs
for file in $files; do
	echo "Moving $file from Home to $olddir/$file"
	mv ~/.$file $olddir/
done
echo "...done."

# 2.1 Make a copy of .vim dir
echo "moving .vimrc from home to $olddir/.vimrc"
mv ~/.vimrc $olddir/
echo "making a backup for .vim directory"
cp -r ~/.vim/ $oldvimdir/
echo "...done."

# 3. init all submodules
echo "changing to the ~/dotfiles directory"
cd $newdir
echo "init .vim repository"
env -i git submodule init
env -i git submodule update
echo "...done."

# 4. init .vim plugins
echo "switching to the .vim directory"
cd $vimdir
echo "loading plugins from repositories"
env -i git submodule init
env -i git submodule update
echo "..done"

# 5. making symlinks
for file in $files; do
	echo "creating symlink to $file in home directory."
	ln -s $newdir/$file ~/.$file
done 

echo "creating symlink to $vimdir/vimrc"
ln -s $vimdir/vimrc ~/.vimrc
echo "creating symlink to $vimdir"
ln -s $vimdir ~/.vim

echo "..finished successfully."
