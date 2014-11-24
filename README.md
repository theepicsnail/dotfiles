dotfiles
========
```bash
sudo apt-get install git zsh tmux 

# Install otr weechat, launch with 'weechat' alias.
sudo apt-get install weechat python-pip python-dev
sudo pip install virtualenv
virtualenv -p `which python2.7` .weechatenv
source .weechatenv/bin/activate
pip install python-potr
alias weechat="source ~/.weechatenv/bin/activate; weechat-curses; deactivate"


git init .
git remote add -t \* -f origin git@github.com:theepicsnail/dotfiles.git
git checkout master
git submodule init
git submodule update

chsh -s `which zsh`
```
