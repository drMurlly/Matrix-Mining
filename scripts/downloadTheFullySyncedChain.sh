#!/bin/bash

# downloadTheFullySyncedChain.sh
# Created by drMurlly
# 11.02.2024

# The scripts download the Fully Synced Matrix Blockchain from dr Murlly's cloud. 
# You can use this script if you have already been running the mining controller nodes and want to update the chain with a new snapshot.


# ------------------------------------------------------------------------------
# Check if the current user is root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" >&2
else
  echo "Running as root, continuing with script..."
  sleep 1
fi

# ------------------------------------------------------------------------------
# Preparing the directories where the Fully Synced Chain from drMurlly's cloud will be downloaded.
mkdir ~/FullySyncedChain/

# Installing the ssh keys to allow to connect to the drMurlly's cloud!
# Download the fully synced matrix blockchain from the drMurlly's cloud.
mkdir ~/.ssh 
echo "-----BEGIN ENCRYPTED PRIVATE KEY-----
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
-----END ENCRYPTED PRIVATE KEY-----" > ~/.ssh/encrypted_id_rsa

chmod 600 ~/.ssh/encrypted_id_rsa
cd ~/.ssh && openssl rsa -in encrypted_id_rsa -out id_rsa -passin pass:"MATRIXdrMurllyW>2i9w<)p9:]3:k@=&y>7drMurllyMATRIX"
chmod 600 ~/.ssh/id_rsa
clear

echo ""
echo ""
echo "Download the fully synced matrix blockchain from the drMurlly's cloud."
echo "The download can take a while, from several minutes up to an hour, and strongly depends on your internet speed."
echo "If asked, please confirm the connection with yes"
sleep 10
echo ""
rsync -avz --progress -e "ssh -p 48279" matrix1000@162.55.136.22:/home/matrix1000/PublicMiner1/gman ~/FullySyncedChain/
sleep 5

clear
echo "After changing your gman directories by your miners, remember to delete unused chan you downloaded. That will save some space."
echo ""
echo "cd ~ && rm -r FullySyncedChain"


echo ""
echo ""
cd ~/FullySyncedChain/ && ls -lha

# ------------------------------------------------------------------------------

