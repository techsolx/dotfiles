### These are my dotfiles

#### If you don't know what a dotfile is look [here] (http://askubuntu.com/questions/94780/what-are-dot-files)


#### Clone into your home directory.
````
git clone --recursive the above repo
cd dotfiles
./.make.sh
````

#### Update the submodules
````
git submodule update --init --recursive
````

#### To initalize the plugins for a new install in vim in normal mode type
````
:PluginInstall
````
#### Or from the command line type
````
vim +PluginInstall +qall
````

#### To update plugins from time to time in vim normal mode
````
:PluginUpdate
````
