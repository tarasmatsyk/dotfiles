#!/bin/bash
############################
# install.sh
# This script creates symlings from the home directory to any desired dotfiles in ~/dotfiles
###########################

############## Variables

newdir=~/dotfiles						# dotfiles directory
olddir=~/dotfiles_old			# old dotfiles backup directory
files="bashrc .vim/vimrc"			# list of files/folders to symlink in homedir
vimdir=~/dotfiles/.vim
oldvimdir=~/dotfiles_old/.vim
###########################

if [[ $1 = "skipC" ]]; then
# install required components
	echo "Calling aptget.sh script"
	sh ./aptget.sh
fi

# create dotfiles_old in homedir
echo "changing to Home ~"A
cd ~
echo "create backup dir"
mkdir -p $olddir
echo "...done"

# change 
echo "changing to the ~/dotfiles directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to $olddir directory, then create symlinks
for file in $files; do
	echo "Moving $file from ~ to $olddir"
	mv ~/.$file $olddir/
	echo "creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

# init .vim repository
env -i git submodule init
env -i git submodule update

# move an existing vim plugins configuration to $oldvimdir directory, then copy the ones from the repostiry
echo "making a backup for .vim directory"
cp -r ~/.vim/ $oldvimdir/
echo "removing .vim directory"
rm -rf ~/.vim
echo "copying .vim from the repos"
cp -r $vimdir ~/
echo "switching to the new .vim directory"
cd $vimdir
echo "loading plugins from repositories"
env -i git submodule init
env -i git submodule update
echo "..done"

echo "..finished successfully."
