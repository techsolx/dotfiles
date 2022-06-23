[![CircleCI](https://dl.circleci.com/status-badge/img/gh/techsolx/dotfiles/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/techsolx/dotfiles/tree/main)
[![semantic-release: angular](https://img.shields.io/badge/semantic--release-angular-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

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
