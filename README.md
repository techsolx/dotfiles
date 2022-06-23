### These are my dotfiles

#### If you don't know what a dotfile is look [here] (http://askubuntu.com/questions/94780/what-are-dot-files)


#### Clone into your home directory.
```
git clone --recursive the above repo
```
then:
```
cd dotfiles && chmod +x setup.sh && ./setup.sh
```

#### Update the submodules
Specifically make sure Vundle is installed.

```
git submodule update --init --recursive
```

#### To initalize the plugins for a new install in vim in normal mode type
```
:PluginInstall
```

#### Or from the command line type
```
vim +PluginInstall +qall
```

#### To update plugins from time to time in vim normal mode
````
:PluginUpdate
````
