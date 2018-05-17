	#!/bin/sh
SERVICE='xmrig'
 
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "GOOD! $SERVICE IS RUNNING! EVERYTHING IS OK!"
else
    echo "BAD NEWS! $SERVICE IS NOT RUNNING. RESTARTING MAIN DAEMON PROCEDURE"
    cd /xmrig-scaligero
	sudo ./xmrig --config=/xmrig-scaligero/pools/xmr.json
	cd /xmrig-scaligero
	sudo sh xmrig-agent.sh
    #echo "$SERVICE is not running!" | mail -s "$SERVICE down" root
fi
