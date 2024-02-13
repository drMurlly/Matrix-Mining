#!/bin/bash

# relaunchMiners.sh
# Created by drMurlly
# 13.02.2024


# Stop and remove the Docker containers.
sudo docker stop Miner{1..30} 2>/dev/null && sleep 1
sudo docker rm Miner{1..30} 2>/dev/null && sleep 1

# Get the Docker containers up and running again.
echo "Get the Docker containers up and running." && sleep 1
cd ~/Masternodes || exit # Ensure we're in the right directory

    for dir in Miner*; do
        miner_number=$(echo "$dir" | grep -o -E '[0-9]+')
        port=$((50000 + miner_number))
        sudo docker run --restart unless-stopped -d -e MAN_PORT="$port" -p "$port:$port" -v "/root/Masternodes/$dir:/matrix/chaindata" --name "$dir" drmurlly/matrix
    done
echo ""
