#!/bin/bash
sudo zpool status > ~/.config/conky/pascalwhoop/zpool_status 
if [ ! -z `cat ~/.config/conky/pascalwhoop/zpool_status | grep "DEGRADED"` ]; then 
	cat ~/.config/conky/pascalwhoop/zpool_status
fi

