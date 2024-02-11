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
# Clone the drMurlly's GitHub repository.
cd ~ && git clone https://github.com/drMurlly/Matrix-Mining.git
cd Matrix-Mining && chmod 755 gman logCleanup nodeConfig.sh
cd Matrix-Mining/scripts && chmod 755 *.sh && mv matrixCheck.sh matrixCheck && cp matrixCheck /usr/bin

# ------------------------------------------------------------------------------
# Download the Docker image from Docker Hub. 
docker pull drmurlly/matrix

# ------------------------------------------------------------------------------

# Install all necessary dependencies, Docker, open up the needed ports, and copies matrixCheck to /usr/bin.
apt-get update -y && apt-get upgrade -y
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
timedatectl set-ntp true
apt install tzdata -y
dpkg-reconfigure tzdata

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
cd ~/Matrix-Mining && cp -r picstore man.json ~/Masternodes/Miner1/


# ------------------------------------------------------------------------------
# Installing the ssh keys to allow to connect to the drMurlly's cloud!
# Download the fully synced matrix blockchain from the drMurlly's cloud.
mkdir ~/.ssh 
echo "# The key to download the fully synced matrix blockchain from the drMurlly's cloud.
-----BEGIN OPENSSH PRIVATE KEY-----
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
XUSAd94EDohFvXAAAACnJvb3RAaG9tZTQ=
-----END OPENSSH PRIVATE KEY-----" >> ~/.ssh/id_rsa

chmod 600 ~/.ssh/id_rsa

echo ""
echo "Download the fully synced matrix blockchain from the drMurlly's cloud."
echo "If asked, please confirm the connection with yes"
echo ""
rsync -avz --progress -e "ssh -p 48279" matrix1000@162.55.136.22:/home/matrix1000/PublicMiner1/gman ~/Masternodes/Miner1/

# ------------------------------------------------------------------------------

# Copy the blockchain data to all your miners.
echo "Copy the blockchain data to all your miners."

cd ~/Masternodes/Miner1
    for i in $(seq 2 $MAX_MINERJEV); do
        cp gman picstore man.json Miner$i/
        echo "Copied the blockchain data to Miner$i"
    done
echo ""
# ------------------------------------------------------------------------------

# Get the Docker containers up and running.
echo "Get the Docker containers up and running." && sleep 1
cd ~/Masternodes || exit # Ensure we're in the right directory

    for dir in Miner*; do
        miner_number=$(echo "$dir" | grep -o -E '[0-9]+')
        port=$((50000 + miner_number))
        sudo docker run --restart unless-stopped -d -e MAN_PORT="$port" -p "$port:$port" -v "~/Masternodes/$dir:/matrix/chaindata" --name "$dir" drmurlly/matrix
    done
echo ""

# ------------------------------------------------------------------------------

echo "Please wait for 5 min."
echo "The Matrix Docker Container status will be saved in the file: Matrix_Docker_Container_Status.txt."
echo "Your miners are up and running if you didn't receive any errors. It may take up to 5 min to collect the peers."
sleep 300

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
        echo "HARD WORK BEATS TALENT EVERY TIME"
        echo "drMurlly from the Blockchain room wish you happy $MAN Mining!
        Visit the https://stakematrixai.com/ and sign in for the Updates!"
        echo ""
    } >> ~/Masternodes/Matrix_Docker_Container_Status.txt

echo ""
clear
cat ~/Masternodes/Matrix_Docker_Container_Status.txt
echo ""
echo ""
# ------------------------------------------------------------------------------

# Help with managing the containers.
echo "cat ~/Masternodes/Matrix_Docker_Container_Status.txt          # Check the Matrix Docker Container status"
echo "cd ~/Matrix-Mining      # GitHub Clone Dir"
echo "cd ~/Masternodes        # Here are located all your miners"
echo ""
echo "docker ps -a -f status=exited        # STOPED CONTAINERS"
echo "docker ps -a | grep matrix           # RUNNING CONTAINERS"
echo "docker info | head | tail -n6        # DOCKER CONTAINERS INFO"
echo ""
echo "matrixCheck             # Check Mining, Syncing, Net_Status or Block_Number status"
echo ""
echo "docker restart Miner{1..30}          # Restart all your Docker Containers (Restart Miners)"
echo "docker stop Miner{1..30}             # Stop all your Docker Containers (Stop Miners)"
echo "docker rm Miner{1..30}               # Delete all your Docker Containers (Stop Miners)"
echo ""

Echo "If you get an Error that some Ports are already in use and the Miner is not running, 
you need to change the ports manually. The Example command is below."
echo "Example Docker command to start the Miner1."
echo "sudo docker run --restart unless-stopped -d -e MAN_PORT=50001 -p 50001:50001 -v ~/Masternodes/Miner1:/matrix/chaindata --name Miner1 drmurlly/matrix"
echo ""
echo "Example Docker command to start the Miner2."
echo "sudo docker run --restart unless-stopped -d -e MAN_PORT=50002 -p 50002:50002 -v ~/Masternodes/Miner2:/matrix/chaindata --name Miner2 drmurlly/matrix"


# ------------------------------------------------------------------------------
# ADD THIS TO THE README.md
git curl https://github.com/drMurlly/Matrix-Mining/scripts/installMultipleMiners.sh && chmod +x installMultipleMiners.sh && nano installMultipleMiners.sh


Please adjust the variable. >> MAX_MINERJEV=30 <<
How many miners do you want to run? Enter a number between 1 and 30.
Each miner will need about 50 GB of disk storage and 2 GB of RAM.



Then press Ctrl+s to save and Ctrl+x to exit the nano editor.
Just run the installer to set up the miners on your machine. You'll need to input a few things along the way.
./installMultipleMiners.sh