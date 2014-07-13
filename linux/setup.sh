# updates
apt-get update && apt-get upgrade -y
apt-get dist-upgrade -y

# general dev / libs
apt-get install -y build-essential
apt-get install -y git curl tree
apt-get install -y sqlite3 libsqlite3-dev libpq-dev libxslt1-dev libyaml-dev

# chrome
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > chrome.deb
dpkg -i chrome.deb
rm chrome.deb

# node / npm
apt-get install -y python-software-properties python g++ make
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs

# ruby / rails / rvm
curl -sSL https://get.rvm.io | bash -s stable --rails --autolibs=enable && chown -R 1000 /usr/local/rvm && echo 'source /usr/local/rvm/scripts/rvm' >> ~/.bashrc && source /usr/local/rvm/scripts/rvm

# heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
