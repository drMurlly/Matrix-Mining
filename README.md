# WHAT IS MATRIX AI NETWORK? 
https://www.matrix.io/   
   
Matrix AI Network ($MAN) is a decentralized AI (Artificial Intelligence) platform combining blockchain technology with AI capabilities. It aims to create an ecosystem where AI and machine learning algorithms can be developed, deployed and incentivized securely and transparently. Matrix AI Network utilizes its own AI-driven blockchain to support various applications and services, including data analysis, intelligent contracts, and decentralized applications (dApps). The network also emphasizes privacy and security by implementing advanced encryption techniques. Matrix AI Network aims to revolutionize the AI industry by providing a decentralized and efficient platform for AI development and deployment.   
   
   
      
### Matrix AI Network consensus mechanism   
Matrix AI Network uses a unique PoS + PoW hybrid consensus mechanism. In this mechanism, the Proof of Work (PoW) process is carried out in a smaller network of delegates. These delegates are selected using a random distributed voting algorithm, and the probability of a node being selected is proportional to its Proof of Stake (PoS). The selected delegate, the "winner" delegate, shares the PoW reward with other nodes in its cluster. This approach helps eliminate latency issues commonly arising when scaling blockchain networks. By combining the advantages of both PoS and PoW, MATRIX AI Network aims to achieve a more efficient and secure consensus mechanism. PoS helps to ensure that nodes with a higher stake in the network have a greater chance of being selected, while PoW helps maintain the blockchain's security and integrity. Overall, the hybrid PoS + PoW consensus mechanism employed by MATRIX AI Network enables the network to achieve high performance and scalability while maintaining a secure and decentralized system.   
   
   
      
### Official DOCS
https://docs.matrix.io/   
   
Technical Guide to Create Mining Masternodes in Ubuntu (Linux) with Matrix AI Network   
https://docs.matrix.io/guides/create-mining-masternodes-in-ubuntu-linux-with-matrix-ai-network   
   
   
Create a Wallets      
https://docs.matrix.io/guides/create-a-portfolio   
   
   

### Additional Support    
This can be found in the official Matrix AI Network Telegram Groups.       
https://t.me/matrixainetwork      
https://t.me/MatrixMasternodes    
      

   
### About me   
I have been running miners and validators on the Matrix AI Network since the beginning.    
drMurlly is a highly experienced and dedicated member of the Matrix AI community. He is known for running multiple miners' masternodes and staking pools for the Matrix AI Network.    
Regarding educational background, drMurlly holds a Master of Science degree in Bioinformatics, demonstrating a strong foundation in computer science, including data structures, algorithms, and distributed systems. Overall, drMurlly is a passionate tech enthusiast interested in blockchain, web3, and AI. He has been a solopreneur since 2017, actively managing DLT nodes and contributing to the growth and development of the Matrix AI Network.   
   
Matrix AI Staking with drMurlly   
Be a part of our exclusive community and gain early access to tips and reports to help you navigate your Matrix AI staking Journey! I am the creator of the Weekly Performance Report. The report includes 20+ pages of valuable data from Matrix AI Blockchain.     
   
Sign up for the list and receive a FREE report every Monday!   
https://stakematrixai.com/      
   
Calculate the estimated average return for fixed-staking methods   
https://stakematrixai.com/calculator/   
   
Matrix AI Network BrainWave. Ask the LLM model anything about Matrix AI Network!   
https://brainwave.stakematrixai.com/   
   
Follow me for Matrix AI Network updates and also various other web3-related topics!   
https://twitter.com/drMurlly   
https://twitter.com/MatrixAIStaking   
   

   
### Mining (PoW)   
The miners in Matrix AI Network are elected through a process called random clustering algorithms (RCA). These algorithms categorize nodes based on their characteristics and then select representatives from these categories through true random elections. This ensures fairness in the election process. Only the elected miners participate in PoW mining, while other miners do not participate in every mining cycle. This allows Matrix to export the extra computing power on its platform to clients who need it, similar to a cloud computing platform.   
   
Blacklisted Miners are miners who have been penalized for not correctly executing their mining transactions. If a miner is blacklisted, they face a suspension from mining activities for one cycle. The blacklisted miner's list is cleared after every Round Robin cycle.   
   

   
### Estimated average return for MINING approx. 36% (APR)   
The mining reward is very dependent on what kind of hardware is used. APR is calculated from data for the last 6 months based on 60 consistently working miners. The used mining CPU is AMD Ryzen 9 7950x and AMD Ryzen 9 5950x. A similar reward can be achieved with Intel Core I9-13900KS. The APR can decrease significantly if the miners are not managed reliably and not-so-strong hardware is used.   
Annual Percentage Rate (APR) refers to the annual interest generated by a sum paid to miners, expressed as a percentage representing the actual yearly income earned on an investment. It's worth noting that APR considers that miners are created with 10.000 MAN and does not consider compounding.   
   

   
### Official Minimal System Requirements   
| OS        | Windows, Linux                               |   |   
|-----------|----------------------------------------------|---|   
| CPU       | 8 Core (Intel(R) Xeon(R) CPU X5670 @2.93GHz) |   |   
| RAM       | 16G                                          |   |   
| Free HD   | 300G                                         |   |   
| Bandwidth | 20M                                          |   |   
|           |                                              |   |   
   
   
## By drMurlly Recommended System Requirements  
| OS        | Server Edition Ubuntu 20.04, Ubuntu 22.04                         |   |   
|-----------|-------------------------------------------------------------------|---|   
| CPU       | 16 core AMD Ryzen 9 5950x, 24 core Intel Core I9-13900, or better |   |   
| RAM       | Each miner need at least 2 GB RAM                                 |   |   
| Free HD   | Each miner need at least 50 GB of disk storage                    |   |
| HD        | 2x1 TB SSD or NVMe, RAID 0, if you run 30 miners                  |   |    
| Bandwidth | At least 120 Mbit/s internet connection if you run 30 miners      |   |   
|           |                                                                   |   | 
   
   
## How to use the installer and this Docker container   
Operating mining masternodes for the Matrix AI Network within Docker containers enables streamlined management of multiple miners on a single machine. As these miners are unlikely to be selected simultaneously, deploying multiple containers enhances the likelihood of fully leveraging your hardware's capabilities. Our testing has shown that running one miner per CPU thread is feasible. Consequently, on a machine equipped with 32 CPU threads, it is possible to operate up to 34 mining masternodes concurrently. The best performance in this case is achieved with 30 MN running.    
   

## Key points
To launch a Mining Masternode, you must stake at least 10,000 MAN.   
   
Each Masternode must have 2 Wallets A and B associated with it (which you must create). Use the guide and link mentioned above.     
    
Wallet B will be configured on the machine and serve as a secure bridge to wallet A, where your staking will be located and where you will also receive your MAN rewards.   
   
There are two types of rewards generated: Staking and Mining rewards.   
Both types of rewards will be sent to Wallet A of each node. However, the staking rewards will remain locked as long as the staking is also locked, while mining rewards will be available and transferable at all times.   


The fully synced matrix blockchain download from the drMurlly's cloud can take a while, from several minutes up to an hour, and strongly depends on your internet speed.


## Tips for Smooth Sailing
Getting organized is half the battle won. Here's a simple way to keep your wallet files in check:   
   
Set Up Your Folders: Start by making a folder named something like MN_21 on your laptop. Inside this folder, create two more folders named Wallet_A and Wallet_B. Remember back in step 7, when you created your wallets? Drag the Keystore file for each wallet into its respective folder. This little bit of organization goes a long way.   
   
Screenshot Assistance: If you get stuck, there are some screenshots included here to guide you through. Don't worry about making the password for Wallet B too complex, since it's just a bridge and won't be holding any MAN coins. However, for Wallet A, it's a good idea to use a strong password along with the Keystore file for added security, rather than just relying on a private key or mnemonic phrase.   
   
Password Management: To keep track of your passwords without losing your mind, consider using a password manager. It's a game-changer for managing multiple passwords securely. I personally recommend KeePassXC.   
   
Safekeeping Your Keystore Files: Find a secure yet accessible spot to store your Keystore files. And don't forget to make backups! For encrypting the space where I keep my important files, I use VeraCrypt. It's solid.   
   
Your Wallet, Your Responsibility: Educating yourself on creating and storing wallets safely is crucial. I've shared some best practices with you, but ultimately, the safety of your crypto is in your hands. Do your homework and stay safe out there.   
   
Remember, a little prep now can save you a lot of headaches later. Happy mining!   
   
   
# This script is basically all you need to run multiple miners in Docker containers.
It'll handle everything for you. If you're familiar with using the terminal, you can technically set up multiple matrix masternodes with this script. It'll be a smoother experience if you know some basic Ubuntu commands.   
   
   
Login as root.   
```   
sudo -i
```   
   
Download the installer   
```   
wget https://raw.githubusercontent.com/drMurlly/Matrix-Mining/main/installMultipleMiners.sh -O installMultipleMiners.sh && chmod +x installMultipleMiners.sh && nano installMultipleMiners.sh
```   
      
       
Please adjust the variable. >> MAX_MINERJEV=30 <<
How many miners do you want to run? Enter a number between 1 and 30.
Each miner will need about 50 GB of disk storage and 2 GB of RAM.
   
Then press Ctrl+s to save and Ctrl+x to exit the nano editor.
Just run the installer to set up the miners on your machine. You'll need to input a few things along the way.
   
Start the installer   
```   
cd ~ && sudo ./installMultipleMiners.sh
```   
   
      
I've updated the chain and set everything up so it's ready to go for you daily. This means you'll only need to sync a few hundred blocks to get to the latest one, and this synchronization should wrap up in about an hour.   
   
If the installer gets stuck during the download, or if your connection gets interrupted, press Ctrl+c one time, in some cases the installation will continue, if not no worries—just stop the installer and give him another run.   
    
       
After successfully installing, you must place your Wallet B signAccount.json and keystore file in the appropriate place. See screenshots for help.   
EXAMPLE for Miner1 for signAccount.json file   
```    
nano /root/Masternodes/Miner1/signAccount.json
```    
   
EXAMPLE for Miner1 for KeyStore file   
```    
cd /root/Masternodes/Miner1/keysote && nano MAN.21aeEZssC2FGjUL3Jv6uTLtAjbCaG
```    
Change the address name with your B Wallet. Paste the content from the Wallet B Keystore File. Save with Ctrl+s and Exit with Ctrl+x. See the example in screenshot folder for additional help.   
   
   
Restart all your Docker Containers
```     
docker restart Miner{1..30}    
```     
   
If the miners had peers, you are okay with waiting up to 36 hours for some of your newly deployed miners to be elected, and you will collect valuable MAN tokens.     
    
      
## Help with managing the containers.
   
Shortcut to run the matrixCheck script   
Check Mining, Syncing, Net_Status or Block_Number status   
```   
matrixCheck
```   
   
Working Directories     
Check the Matrix Docker Container status
```    
cat ~/Masternodes/Matrix_Docker_Container_Status.txt      
```    
   
      
```    
GitHub Clone Dir
cd ~/Matrix-Mining
```
   
      
Here are located all your miners
```   
cd ~/Masternodes
```   
   
      
Docker help
``` 
doc                                  # SHOW THE STOPED CONTAINERS
doc1                                 # SHOW THE RUNNING CONTAINERS
docker ps -a -f status=exited        # SHOW THE STOPED CONTAINERS
docker ps -a | grep matrix           # SHOW THE RUNNING CONTAINERS
docker info | head | tail -n6        # SHOW THE DOCKER CONTAINERS INFO
docker restart Miner{1..30}          # Restart all your Docker Containers (Restart Miners)
docker stop Miner{1..30}             # Stop all your Docker Containers (Stop Miners)
docker rm Miner{1..30}               # Delete all your Docker Containers (Stop Miners)
```    
   
If you get an Error that some Ports are already in use and the Miner is not running, you need to change the ports manually. The Example command is below.   
   
Example Docker command to start the Miner1.   
```    
sudo docker run --restart unless-stopped -d -e MAN_PORT=50001 -p 50001:50001 -v /root/Masternodes/Miner1:/matrix/chaindata --name Miner1 drmurlly/matrix
```    
   
Example Docker command to start the Miner2.   
```    
sudo docker run --restart unless-stopped -d -e MAN_PORT=50002 -p 50002:50002 -v /root/Masternodes/Miner2:/matrix/chaindata --name Miner2 drmurlly/matrix
```   
   
         
Docker containers tend to take up more space over time, which is just how Docker works – it's not a glitch or anything. If you're curious to dive deeper into how Docker operates, check out the official Docker documentation right here: https://docs.docker.com/   
   
Here's the deal: to keep things running smoothly, we need to restart the containers regularly. This means doing it at least once a week. If your disk space is on the tighter side, you might even need to do it twice a week.   
   
Here's how to set it up.   
    
First, log in as the root user: 
```     
sudo -i
```      
   
Then, open up your crontab (if it's your first time, go with the Nano editor when prompted):   
```   
crontab -e
```   
   
Scroll down to the bottom and add this line, which schedules the containers to restart twice a week – every Tuesday and Saturday at 9 AM:   
```   
# Restart the Matrix Docker Containers every Tuesday and Saturday at 9:00 AM
0 9 * * 2 /root/Matrix-Mining/scripts/relaunchMiners.sh
0 9 * * 6 /root/Matrix-Mining/scripts/relaunchMiners.sh
```   
   

## Troubleshooting
If some of your Miners don't get peers after 5 minutes, then try to execute the following script
```   
cd ~/Matrix-Mining/scripts && ./relaunchMiners.sh
```    
   
Wait for 5 minutes and recheck the peers. With this command:   
```   
matrixCheck
```   
   
     
If just some miners don't get peers, try to stop, remove, and relaunch just those specific miners. Example for Miner1:
```
sudo docker stop Miner1 
sudo docker rm Miner1
sudo docker run --restart unless-stopped -d -e MAN_PORT=50001 -p 50001:50001 -v /root/Masternodes/Miner1:/matrix/chaindata --name Miner1 drmurlly/matrix
```   
   
    
The second thing is just a regular reboot. You don't need to stop the containers before rebooting; after rebooting, all deployed miners must restart from alone. The machine rebooting helps most of the time.
```
sudo reboot
```

If you're having trouble connecting to peers, there are a couple of things you might want to try out.   
   
First off, open Port number  50505 for UDP and TCP traffic. The port number must be available (open in your router and not already used by another process). The process differs for each user and depends on your internet provider and router. Just google how to do that.   
   

Using a VPN could help – I've been using Mullvad myself (you can check it out here: https://mullvad.net/en). It's about 5€ a month, but totally worth it in my experience. It's really helped me sort out quite a few issues with my mining setup.   
   

Your internet speed might be too slow, especially if you're trying to run a bunch of miners on a not-so-great connection. Or, even if your internet's decent, it might be too tied up with other stuff, leaving not enough bandwidth for your miners. Getting a faster internet connection, or scaling back on the number of miners, could make a big difference. For instance, with a 120 Mbit/s connection, you could comfortably run about 30 miners. With a 1 Gbit/sec connection, you could run several hundred, though that might bring up some other challenges that you'd need to deal with later.   
   
   
If you're still stuck, the official Telegram groups are a great place to seek help. Lots of folks there can offer advice. I've put quite a bit of time into the Matrix AI Network and really believe in it, but I can't offer one-on-one support all the time – I'm pretty swamped and can't be active in the Telegram groups all day. I do pop in from time to time to help with major issues though. If you've been trying to figure things out on your own for a day or so and still can't crack it, you'll have a bit of a priority for my help. But it's also important to try and work things out on your own a bit.
   
   
Join the official Matrix AI Network Telegram groups for additional troubleshooting and conversation about mining, staking, or other topics.      
https://t.me/matrixainetwork         
https://t.me/MatrixMasternodes       
   
       
### Disclaimer   
The information provided here is intended solely for informational purposes. The content presented reflects data collected from various sources and is subject to change without notice. While every effort has been made to ensure the accuracy and reliability of the information, we do not guarantee the completeness, accuracy, or reliability of the content.This DOCS does not constitute financial or investment advice and should not be interpreted as a recommendation to buy, sell, or hold any cryptocurrency, token, or investment instrument. Any decisions made based on the information provided in this DOCS are made at your own risk. Always conduct thorough research and consult with qualified financial advisors before making any investment decisions. The Matrix AI Network, its ecosystem, and the blockchain industry are subject to rapid technological developments, regulatory changes, and market dynamics that can impact the accuracy of the information presented. Any historical data, past performance, or future projections mentioned in this DOCS are not indicative of future results. We disclaim any liability for any direct, indirect, incidental, consequential, or special damages arising out of or in any way connected with the use of this DOCS or reliance on the information provided. Readers are advised to verify the information independently and exercise caution when interpreting the data. By accessing and using this DOCS, you agree to these terms and acknowledge that you are solely responsible for your own decisions and actions.   
   