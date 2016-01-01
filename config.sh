#!/bin/sh

# add custom sources and PPA's
sudo add-apt-repository -y ppa:

# update & upgrade
sudo apt-get -y update && sudo apt-get -y upgrade
apt-get -y dist-upgrade

# install apps
sudo apt-get -y install \
  atom \
  dropbox \
  filezilla \
  gimp \
  git \
  google-chrome-stable \
  nodejs \
  nscd \
  ruby \
  skype \
  unity-tweak-tool \
  vlc

# create a symlink /usr/bin/node
sudo ln -s `which nodejs` /usr/bin/node

# install Ruby Version Manager (RVM)
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm

# install gems
sudo gem install bundler

# install Base16 Ocean theme for Terminal
wget -P ~/home/downloads/ https://raw.githubusercontent.com/MilanAryal/config/base16-ocean-theme/gnome-terminal/base16-ocean.dark.sh && sudo ~/home/downloads/base16-ocean.dark.sh

# backup hosts file
cp -b ~/etc/hosts ~/etc/hosts-backup

wget -P ~/home/downloads/ https://raw.githubusercontent.com/MilanAryal/config/etc/hosts && sudo cp -a ~/home/downloads/hosts ~/etc/hosts

# flush DNS cache by restarting the nscd
sudo ~/etc/init.d/nscd restart

# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""
