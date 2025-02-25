#!/bin/sh
~/ccminer/ccminer -c ~/ccminer/config.json

rm -f start.sh
nano start.sh
chmod +x start.sh   
rm -f config.json
nano config.json
./start.sh

