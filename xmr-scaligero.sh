#!/bin/sh

# ScaligeroScript
# Autor: XMRIG SCALIGERO
# Version: 0-0-1a
# Script daemon: initial installer

# START INITIAL PROCEDURES

# INSTALL DEPENDENCIES AND UPDATE-UPGRADE 
sudo apt-get -y update
sudo apt-get -y install git build-essential cmake libuv1-dev libmicrohttpd-dev
sudo apt-get -y install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
sudo apt-get -y install pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python python-zmq zlib1g-dev wget curl bsdmainutils automake
cd /home

# GIT CLONE XMRIG MASTER
sudo git clone https://github.com/xmrig/xmrig.git

# COMPILE XMRIG
cd xmrig
sudo mkdir build
cd build
sudo cmake ..
sudo make

# COPY XMRIG FOLDER TO ROOT DIRECTORY
cd ..
sudo cp -R build/ /xmrig-scaligero


# GET JSON CONFIG FILE FROM GIT
cd /xmrig-scaligero
sudo mkdir pools
cd pools
sudo wget https://raw.githubusercontent.com/xmrig-scaligero/xmrig-scaligero/master/xmr.json

# GET MAIN DAEMON FROM GIT
cd /xmrig-scaligero
sudo wget https://raw.githubusercontent.com/xmrig-scaligero/xmrig-scaligero/master/main-daemon.sh
sudo sh main-daemon.sh

# INITIAL SETUP FINISHED
