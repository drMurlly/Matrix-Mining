#!/bin/bash

# Created by drMurlly
# 11.02.2024

# The script needs to be run as a root user!
# This script is basically all you need to run multiple miners in Docker containers.
# It'll handle everything for you. If you're familiar with using the terminal,
# you can technically set up multiple matrix masternodes with this script.
# It'll be a smoother experience if you know some basic Ubuntu commands.


########################################################################

# Please adjust the variable.
# How many miners do you want to run? Enter a number between 1 and 30.
# Each miner will need about 50 GB of disk storage and 2 GB of RAM.
# One miner per CPU thread is feasible.

#--------------------     CHANGE THE VARIABLE     --------------------#
MAX_MINERJEV=5
#--------------------     CHANGE THE VARIABLE     --------------------#
########################################################################



# ------------------------------------------------------------------------------
# Check if the current user is root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" >&2
else
  echo "Running as root, continuing with script..."
  sleep 1
fi

# ------------------------------------------------------------------------------
# Delete the working dorectories, in case you need to run installer multiple times.
cd ~ && rm -r Matrix-Mining Masternodes 2>/dev/null

# ------------------------------------------------------------------------------
# Clone the drMurlly's GitHub repository.
cd ~ && git clone https://github.com/drMurlly/Matrix-Mining.git
cd ~/Matrix-Mining/matrix && chmod 755 gman logCleanup nodeConfig.sh
cd ~/Matrix-Mining/scripts && chmod 755 matrixCheck.sh && mv matrixCheck.sh matrixCheck && cp matrixCheck /usr/bin
cd ~/Matrix-Mining/scripts && chmod 755 relaunchMiners.sh

# ------------------------------------------------------------------------------
# Download the Docker image from Docker Hub. 
docker pull drmurlly/matrix

# ------------------------------------------------------------------------------

# Install all necessary dependencies, Docker, open up the needed ports, and copies matrixCheck to /usr/bin.
apt-get update -y && apt-get upgrade -y
timedatectl set-ntp true
apt install tzdata -y
dpkg-reconfigure tzdata
apt-get install ufw -y rkhunter -y make -y aptitude -y
apt-get install htop -y mc -y nload -y git-all -y
apt-get install auditd -y hwinfo -y pydf -y sysstat -y
sudo apt install cpufrequtils -y
apt install speedtest-cli -y
apt-get install fail2ban -y
systemctl restart fail2ban
apt install docker.io -y
systemctl start docker
systemctl enable docker
ufw default allow outgoing
ufw default deny incoming
ufw allow 50505/tcp
ufw allow 50505/udp
sleep 1 && ufw reload

# ------------------------------------------------------------------------------

# Set up all the necessary folders where you'll need to put your Wallet B credentials. 
# You can decide how many miners you want to run. One miner per CPU thread is feasible.

cd ~ && mkdir Masternodes

echo '[
{
"Address":"MAN.xxxYOUR-WALLET-B-ADDRESS",
"Password":"YOUR-WALLET-B-ADDRESS-PASSWORD"
}
]' > ~/Masternodes/signAccount.json

cd ~/Masternodes
    for i in $(seq 1 $MAX_MINERJEV); do
        mkdir "Miner$i"
        cp signAccount.json Miner$i/
        mkdir Miner$i/keystore
        echo "Created directory Miner$i"
    done

rm ~/Masternodes/signAccount.json
cd ~/Matrix-Mining/matrix && cp -r picstore man.json ~/Masternodes/Miner1/


# ------------------------------------------------------------------------------
# Installing the ssh keys to allow to connect to the drMurlly's cloud!
# Download the fully synced matrix blockchain from the drMurlly's cloud.
mkdir ~/.ssh 
echo "-----BEGIN ENCRYPTED PRIVATE KEY-----
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
-----END ENCRYPTED PRIVATE KEY-----" >> ~/.ssh/encrypted_id_rsa

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
rsync -avz --progress -e "ssh -p 48279" matrix1000@162.55.136.22:/home/matrix1000/PublicMiner1/gman ~/Masternodes/Miner1/
sleep 5

# ------------------------------------------------------------------------------

# Copy the blockchain data to all your miners.
echo "Copy the blockchain data to all your miners."

cd ~/Masternodes
    for i in $(seq 2 $MAX_MINERJEV); do
        cp -r Miner1/gman Miner1/picstore Miner1/man.json Miner$i/
        echo "Copied the blockchain data to Miner$i"
    done
echo ""

# ------------------------------------------------------------------------------

# Stop and remove the Docker containers, if you run the script multiple times.
# docker stop Miner{1..30} 2>/dev/null && sleep 1
# docker rm Miner{1..30} 2>/dev/null && sleep 1

# Get the Docker containers up and running.
echo "Get the Docker containers up and running." && sleep 1
cd ~/Masternodes || exit # Ensure we're in the right directory

    for dir in Miner*; do
        miner_number=$(echo "$dir" | grep -o -E '[0-9]+')
        port=$((50000 + miner_number))
        sudo docker run --restart unless-stopped -d -e MAN_PORT="$port" -p "$port:$port" -v "/root/Masternodes/$dir:/matrix/chaindata" --name "$dir" drmurlly/matrix
    done
echo ""

# ------------------------------------------------------------------------------

# Append aliases to .bashrc
echo "# Matrix Miner Aliasses" >> ~/.bashrc
echo "alias doc='docker ps -a | grep Exit'" >> ~/.bashrc
echo "alias doc1='docker ps -a | grep matrix'" >> ~/.bashrc
echo ""
echo "Aliases added to .bashrc successfully."
sleep 1 && source ~/.bashrc

# ------------------------------------------------------------------------------

echo ""
echo ""
echo "Please wait for 3 min."
echo "The Matrix Docker Container status will be saved in the file: Matrix_Docker_Container_Status.txt."
echo "Your miners are up and running if you didn't receive any errors. It may take up to 5 min to collect the peers."
sleep 180

    {
        echo ""
        echo "MATRIX DOCKER CONTAINER STATUS"
        docker ps -a | grep matrix
        echo ""
        echo ""
        echo "NET PEERS FOR EACH MINER"
        for m in $(docker ps | grep nodeConfig | awk {'print $1'}) ; do
          docker exec -i $m /bin/bash -c "/matrix/gman attach /matrix/chaindata/gman.ipc -exec net"
        done
        echo ""
        echo ""
        echo "DOCKER CONTAINERS INFO"
        docker info | head | tail -n6
        echo ""
        echo "STOPED DOCKER CONTAINERS"
        docker ps -a -f status=exited
        echo ""
        echo ""
        echo "HARD WORK BEATS TALENT EVERY TIME
        
        drMurlly from the Blockchain room wish you happy MAN Mining!
        Visit the https://stakematrixai.com/ and sign in for the Updates!"
        echo ""
    } >> ~/Masternodes/Matrix_Docker_Container_Status.txt

echo ""
clear
cat ~/Masternodes/Matrix_Docker_Container_Status.txt
echo ""

# ------------------------------------------------------------------------------
echo ""
echo " ------------------------------------------------------------------------"
echo "Help with managing the containers."
echo "cat ~/Masternodes/Matrix_Docker_Container_Status.txt          # Check the Matrix Docker Container status"
echo "cd ~/Matrix-Mining      # GitHub Clone Dir"
echo "cd ~/Masternodes        # Here are located all your miners"
echo " ------------------------------------------------------------------------"
echo ""
echo "docker ps -a -f status=exited        # STOPED CONTAINERS"
echo "docker ps -a | grep matrix           # RUNNING CONTAINERS"
echo "docker info | head | tail -n6        # DOCKER CONTAINERS INFO"
echo " ------------------------------------------------------------------------"
echo ""
echo "matrixCheck             # Check Mining, Syncing, Net_Status or Block_Number status"
echo ""
echo " ------------------------------------------------------------------------"
echo "docker restart Miner{1..30}          # Restart all your Docker Containers (Restart Miners)"
echo "docker stop Miner{1..30}             # Stop all your Docker Containers (Stop Miners)"
echo "docker rm Miner{1..30}               # Delete all your Docker Containers (Stop Miners)"
echo " ------------------------------------------------------------------------"
echo ""
echo "If you get an Error that some Ports are already in use and the Miner is not running, 
you need to change the ports manually. The Example command is below."
echo ""
echo "Example Docker command to start the Miner1."
echo "sudo docker run --restart unless-stopped -d -e MAN_PORT=50001 -p 50001:50001 -v /root/Masternodes/Miner1:/matrix/chaindata --name Miner1 drmurlly/matrix"
echo ""
echo "Example Docker command to start the Miner2."
echo "sudo docker run --restart unless-stopped -d -e MAN_PORT=50002 -p 50002:50002 -v /root/Masternodes/Miner2:/matrix/chaindata --name Miner2 drmurlly/matrix"
echo ""
echo ""
