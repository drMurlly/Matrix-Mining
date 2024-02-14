#!/bin/bash

# matrixCheck.sh
# Created by drMurlly
# 11.02.2024

# Check Mining, Syncing, Net_Status or Block_Number status.


function lb(){
        printf "\n"
}


function mine(){
echo "This is a list of your containers"
docker ps | grep nodeConfig
lb
echo "This is your status list. Reference the order in the above list"
for m in $(docker ps | grep nodeConfig | awk {'print $1'}) ; do
        docker exec -i $m /bin/bash -c "/matrix/gman attach /matrix/chaindata/gman.ipc -exec man.mining"
done
}

function sync(){
echo "This is a list of your containers"
docker ps | grep nodeConfig
lb
echo "This is your status list. Reference the order in the above list"
for s in $(docker ps | grep nodeConfig | awk {'print $1'}) ; do
        docker exec -i $s /bin/bash -c "/matrix/gman attach /matrix/chaindata/gman.ipc -exec man.syncing"
done
}

function net(){
echo "This is a list of your containers"
docker ps | grep nodeConfig
lb
echo "This is your status list. Reference the order in the above list"
for m in $(docker ps | grep nodeConfig | awk {'print $1'}) ; do
        docker exec -i $m /bin/bash -c "/matrix/gman attach /matrix/chaindata/gman.ipc -exec net"
done
}

function blockNumber(){
echo "This is a list of your containers"
docker ps | grep nodeConfig
lb
echo "This is your status list. Reference the order in the above list"
for s in $(docker ps | grep nodeConfig | awk {'print $1'}) ; do
        docker exec -i $s /bin/bash -c "/matrix/gman attach /matrix/chaindata/gman.ipc -exec man.blockNumber"
done
}


mooseFarts="Do you want to check Mining, Syncing, Net_Status or Block_Number status?"
lb
PS3="$mooseFarts "
select ms in "Mining" "Syncing" "Net_Status" "Block_Number"; do
    case $ms in
        Mining ) mine; exit;;
        Syncing ) sync; exit;;
        Net_Status ) net; exit;;
        Block_Number ) blockNumber; exit;;
    esac
done

