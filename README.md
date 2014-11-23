dotfiles
========
```bash
sudo apt-get install git zsh

git init .
git remote add -t \* -f origin git@github.com:theepicsnail/dotfiles.git
git checkout master
git submodule init
git submodule update

sudo chsh `whoami` -s `which zsh`
```
