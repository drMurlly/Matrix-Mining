#!/bin/sh
#This is used to detect first time run and moves a file
if [ -f "/matrix/man.json" ]; then
  mv /matrix/man.json /matrix/chaindata/
fi

#This section creates your entrust.json file on the fly each time you start the container
#This requires that you mount a persistent volume from your host OS to the container's /matrix/chaindata directory
#You must have a signAccount.json file in your mounted chaindata directory
PASS="$(date +%s | sha256sum | base64 | head -c 4)pO1@"
echo $PASS > /matrix/gman.pass
echo $PASS >> /matrix/gman.pass
cat /matrix/gman.pass | /matrix/gman --datadir /matrix/chaindata aes --aesin /matrix/chaindata/signAccount.json --aesout /matrix/entrust.json

#This detects if this is a first run and intializes the genisis block
if [ ! -d "/matrix/chaindata/gman" ]; then
  cd /matrix/ && ./gman --datadir /matrix/chaindata init /matrix/MANGenesis.json
fi

#This will make sure that the picstore directory gets updated each time a container image is updated
if [ -d "/matrix/picstore" ]; then
	rm -rf /matrix/chaindata/picstore
	mv /matrix/picstore /matrix/chaindata/
fi

# This reads your wallet address and assigns to to the variable
MAN_WALLET="$(ls /matrix/chaindata/keystore/)"

# The chain will be syncronized by drMurlly. The download will be enabled. No need for snapshoot in any case.
echo "Snapshot NOT needed/used" && cd /matrix/ && cat /matrix/gman.pass | ./gman --datadir /matrix/chaindata --networkid 1 --debug --verbosity 3 --port $MAN_PORT --manAddress $MAN_WALLET --entrust /matrix/entrust.json --gcmode archive --outputinfo 1 --syncmode full

