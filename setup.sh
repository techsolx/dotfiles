#!/usr/bin/env bash
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# cd dotfiles
# chmod +x .make.sh
##########

########## Variables

dir=~/dotfiles               # dotfiles directory
bashdir=~/dotfiles/bash      # folders are nested
gitdir=~/dotfiles/git
tmuxdir=~/dotfiles/tmux      
vimdir=~/dotfiles/vim        # vim directory careful to ln -s .vim first
Xinitdir=~/dotfiles/xinit    
olddir=~/dotfiles_old        # old dotfiles backup directory
bashfiles="bashrc bash_profile bash_aliases inputrc quanticrc"    # list of files/folders to symlink in homedir
ctagsfile="ctags"
gitfiles="gitconfig"
tmuxfiles="tmux.conf tmux-osx.conf"
vimfiles="vim vimrc"         # list of files/folders to symlink in homedir
Xinit="Xresources xinitrc"		# adding Xresources for urxvt enabled systems

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

#ToDo: dry this up!
# move any existing vimfiles in homedir to dotfiles_old directory, then create symlinks
for file in $vimfiles; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# move any existing Xinit in homedir to dotfiles_old directory, then create symlinks
for file in $Xinit; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $Xinitdir/$file ~/.$file
done

# move any existing bashfiles in homedir to dotfiles_old directory, then create symlinks
for file in $bashfiles; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $bashdir/$file ~/.$file
done

# tmux files
for file in $tmuxfiles; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $tmuxdir/$file ~/.$file
done

# git files
for file in $gitfiles; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $gitdir/$file ~/.$file
done

# Now do ctags the long way
for file in $ctagsfile; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
