#!/bin/sh

# ScaligeroScript
# Autor: XMRIG SCALIGERO
# Version: 0-0-1a
# XMRIG SCALIGERO AGENT: xmrig-agent.sh

# SET SERVICE NAME 
SERVICE='xmrig'
 
# CHECK IF XMRIG SCALIGERO IS RUNNING 
if ps ax | grep -v grep | grep $SERVICE > /dev/null

# IF XMRIG SCALIGERO IS ALREADY RUNNING DO NOTHING
then
    echo "GOOD! $SERVICE IS RUNNING! EVERYTHING IS OK!"
# ELSE RESTART XMRIG AGENT     
else
    echo "BAD NEWS! $SERVICE IS NOT RUNNING. RESTARTING MAIN DAEMON PROCEDURE"
    cd /xmrig-scaligero
	sudo ./xmrig --config=/xmrig-scaligero/pools/xmr.json
	cd /xmrig-scaligero
	sudo sh xmrig-agent.sh
    #echo "$SERVICE is not running!" | mail -s "$SERVICE down" root
fi
