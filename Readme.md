### These are my dotfiles

#### If you don't know what a dotfile is look [here] (http://askubuntu.com/questions/94780/what-are-dot-files)


#### Clone into your home directory.
````
git clone --recursive the above repo
cd dotfiles
./.make.sh
````

#### Then
````
git submodule init
````
or
````
git submodule update --init --recursive
````

#### Finally
````
source ~/.bashrc
````

#### To update submodules from time to time or after an git pull
````
git submodule foreach git pull origin master
````
