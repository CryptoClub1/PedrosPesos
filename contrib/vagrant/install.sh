#!/bin/bash -ev

sudo apt-get install -y -qq htop
<<<<<<< HEAD
sudo timedatectl set-ntp on

sudo apt-get -y install build-essential libqt4-dev qt5-qmake cmake qttools5-dev libqt5webkit5-dev qttools5-dev-tools qt5-default python-sphinx texlive-latex-base inotify-tools libboost-dev libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev openssl libssl-dev libdb++-dev libminiupnpc-dev git sqlite3 libsqlite3-dev g++ libpng-dev

mkdir -p ~/.PedrosPesos
echo "rpcuser=username" >>~/.PedrosPesos/PedrosPesos.conf
echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >>~/.PedrosPesos/PedrosPesos.conf

#    git clone https://github.com/PedrosPesos/PedrosPesos
#    cd PedrosPesos
#    git checkout v0.6.1PP
#    qmake -qt=qt5 && make


pushd /vagrant
git checkout v0.6.1PP

pushd src
qmake -qt=qt5 && make -j$(nproc)
make -f makefile.unix -j$(nproc)

#install berkleydb 4.8
#pushd contrib
#./install_db4.sh `pwd`
#popd

=======
sudo timedatectl set-ntp no
sudo apt-get -y -qq install ntp
sudo ntpq -p
>>>>>>> upstream/master

./scripts/peercoinconf.sh

./scripts/dependencies-ubuntu.sh

./scripts/install-ubuntu.sh

