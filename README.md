dotfiles
========
```bash
sudo apt-get install git zsh tmux 
chsh -s `which zsh`

# Install otr weechat, launch with 'weechat' alias.
sudo apt-get install weechat python-pip python-dev
sudo pip install virtualenv
virtualenv -p `which python2.7` .weechatenv
source .weechatenv/bin/activate
pip install python-potr
alias weechat="source ~/.weechatenv/bin/activate; weechat-curses; deactivate"

# Clone writable over ssh (if you're not me, you probably want the next block)
git init .
git remote add -t \* -f origin git@github.com:theepicsnail/dotfiles.git
git checkout master
git submodule init
git submodule update

# Clone read only over http (This is probably what you want)
git clone https://github.com/theepicsnail/dotfiles.git
mv dotfiles/.git .
rm -rf dotfiles
git reset --hard
git submodule init
git submodule update
rm -rf .git*

# Disable desktop from showing up when running nautlius
gsettings set org.gnome.desktop.background show-desktop-icons false
```
