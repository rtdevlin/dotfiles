#################
###    dev    ###
#################

apt-get install zsh vim git

apt-get update && apt-get upgrade
apt-get dist-upgrade

apt-get install build-essential

apt-get install curl sqlite3 libsqlite3-dev libpq-dev libxslt1-dev libyaml-dev tree lynx

# postgres
apt-get install postgresql libpq-dev pgadmin3 postgresql-contrib
# # postgres rails config
# sudo -u postgres psql
# postgres=# CREATE ROLE <username> SUPERUSER LOGIN

# ruby / rails / rvm
curl -sSL https://get.rvm.io | bash -s stable --rails --autolibs=enable
# # helps w/ YAML error on linux reinstall
# apt-get install libtool
# rvm pkg install libyaml
# rvm reinstall X.X.X

# heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# # oh my zsh - https://github.com/robbyrussell/oh-my-zsh
# curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
# chsh -s /bin/zsh

# node / npm /phantomjs
apt-get update
apt-get install -y python-software-properties python g++ make
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install nodejs
npm install phantomjs -g

# TODO ssh keys, config


#################
###  non dev  ###
#################

curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb>~/Downloads/
dpkg -i ~/Downloads/chrome-amd64.deb
rm ~/Downloads/chrome-amd64.deb

# apt-get install mplayer ffmpeg winff libavcodec-extra-52 ffmpeg gjiten
# apt-get install gparted unetbootin powertop skype
# apt-get install ttf-takao ttf-unfonts-core
# # fix x220 sound
# apt-get install libasound2-plugins:i386
