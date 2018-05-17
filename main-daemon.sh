#!/bin/sh

# ScaligeroScript
# Autor: XMRIG SCALIGERO
# Version: 0-0-1a
# Script daemon: main-daemon.sh


# START MAIN DAEMON PROCEDURE
# CHECK IF XMRIG IS ALREADY INSTALLED

cd /
if [ -d /xmrig-scaligero/pools ]; 
	then
    	echo "XNRIG-SCALIGERO ALREADY EXIST"
    	cd /xmrig-scaligero
    	sudo rm -R pools
    	sudo mkdir pools
		cd pools
		sudo wget https://raw.githubusercontent.com/xmrig-scaligero/xmrig-scaligero/master/xmr.json
    else 
    	echo "XNRIG-SCALIGERO DIRECTORY NOT FOUND"
    	cd /xmrig-scaligero
    	sudo mkdir pools
		cd pools
		sudo wget https://raw.githubusercontent.com/xmrig-scaligero/xmrig-scaligero/master/xmr.json
		cd ..
fi

cd /xmrig-scaligero
sudo ./xmrig --config=/xmrig-scaligero/pools/xmr.json

# START MAIN MINER SCRIPT

#sudo wget https://raw.githubusercontent.com/chicoalff/SaligeroCPUminer/master/run-xmr.sh
#sudo sh run-xmr.sh



