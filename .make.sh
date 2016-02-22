# .make.sh
 # This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
 # cd dotfiles
 # chmod +x .make.sh
 ##########

 ########## Variables

 dir=~/dotfiles                    # dotfiles directory
 tmuxdir=~/dotfiles/tmux              # tmux folder is nested
 bashdir=~/dotfiles/bash                     # bash folder is nested
 Xinitdir=~/dotfiles/xinit                     # bash folder is nested
 vimdir=~/dotfiles/vim               # vim directory careful to ln -s .vim first
 olddir=~/dotfiles_old             # old dotfiles backup directory
 vimfiles="vim vimrc"    # list of files/folders to symlink in homedir
 bashfiles="bashrc profile bash_aliases"    # list of files/folders to symlink in homedir
 tmuxfiles="tmux.conf"
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

 # move any existing bashfiles in homedir to dotfiles_old directory, then create symlinks
 for file in $bashfiles; do
     echo "Moving any existing dotfiles from ~ to $olddir"
     mv ~/.$file ~/dotfiles_old/
     echo "Creating symlink to $file in home directory."
     ln -s $bashdir/$file ~/.$file
 done
     echo "Now linking in tmux."
     ln -s $tmuxdir/$tmuxfiles ~/.$tmuxfiles
     