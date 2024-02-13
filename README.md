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
   
   
### By drMurlly Recommended System Requirements  
| OS        | Server Edition Ubuntu 20.04, Ubuntu 22.04                         |   |   
|-----------|-------------------------------------------------------------------|---|   
| CPU       | 16 core AMD Ryzen 9 5950x, 24 core Intel Core I9-13900, or better |   |   
| RAM       | Each miner need at least 2 GB RAM                                 |   |   
| Free HD   | Each miner need at least 50 GB of disk storage                    |   |
| HD        | 2x1 TB SSD or NVMe, RAID 0, if you run 30 miners                  |   |    
| Bandwidth | At least 120 Mbit/s internet connection if you run 30 miners      |   |   
|           |                                                                   |   | 
   
   
### How to use the installer and this Docker container   
Operating mining masternodes for the Matrix AI Network within Docker containers enables streamlined management of multiple miners on a single machine. As these miners are unlikely to be selected simultaneously, deploying multiple containers enhances the likelihood of fully leveraging your hardware's capabilities. Our testing has shown that running one miner per CPU thread is feasible. Consequently, on a machine equipped with 32 CPU threads, it is possible to operate up to 34 mining masternodes concurrently. The best performance in this case is achieved with 30 MN running.    
   

   
## This script is basically all you need to run multiple miners in Docker containers.
It'll handle everything for you. If you're familiar with using the terminal,
you can technically set up multiple matrix masternodes with this script.
It'll be a smoother experience if you know some basic Ubuntu commands.
   
   
Login as root.   
`sudo -i`
   
Download the installer   
`wget https://raw.githubusercontent.com/drMurlly/Matrix-Mining/main/installMultipleMiners.sh -O installMultipleMiners.sh && chmod +x installMultipleMiners.sh && nano installMultipleMiners.sh`   
      
       
Please adjust the variable. >> MAX_MINERJEV=30 <<
How many miners do you want to run? Enter a number between 1 and 30.
Each miner will need about 50 GB of disk storage and 2 GB of RAM.
   
Then press Ctrl+s to save and Ctrl+x to exit the nano editor.
Just run the installer to set up the miners on your machine. You'll need to input a few things along the way.
   
Start the installer   
`cd ~ && sudo ./installMultipleMiners.sh`   
   
   
### Help with managing the containers.
   
```
# Shortcut to run the matrixCheck script
matrixCheck                          # Check Mining, Syncing, Net_Status or Block_Number status
   
# Working Directories     
cat ~/Masternodes/Matrix_Docker_Container_Status.txt      # Check the Matrix Docker Container status
cd ~/Matrix-Mining                                        # GitHub Clone Dir
cd ~/Masternodes                                          # Here are located all your miners
   
      
# Docker help
docker ps -a -f status=exited        # SHOW THE STOPED CONTAINERS
docker ps -a | grep matrix           # SHOW THE RUNNING CONTAINERS
docker info | head | tail -n6        # SHOW THE DOCKER CONTAINERS INFO
docker restart Miner{1..30}          # Restart all your Docker Containers (Restart Miners)
docker stop Miner{1..30}             # Stop all your Docker Containers (Stop Miners)
docker rm Miner{1..30}               # Delete all your Docker Containers (Stop Miners)
   
   
#If you get an Error that some Ports are already in use and the Miner is not running, you need to change the ports manually. The Example command is below.
   
# Example Docker command to start the Miner1.
sudo docker run --restart unless-stopped -d -e MAN_PORT=50001 -p 50001:50001 -v ~/Masternodes/Miner1:/matrix/chaindata --name Miner1 drmurlly/matrix
   
# Example Docker command to start the Miner2.
sudo docker run --restart unless-stopped -d -e MAN_PORT=50002 -p 50002:50002 -v ~/Masternodes/Miner2:/matrix/chaindata --name Miner2 drmurlly/matrix
      
```
   
### Troubleshooting
Join the official Matrix AI Network Telegram groups for additional troubleshooting and conversation about mining, staking, or other topics.      
https://t.me/matrixainetwork         
https://t.me/MatrixMasternodes       
   
       

### Disclaimer   
The information provided here is intended solely for informational purposes. The content presented reflects data collected from various sources and is subject to change without notice. While every effort has been made to ensure the accuracy and reliability of the information, we do not guarantee the completeness, accuracy, or reliability of the content.This DOCS does not constitute financial or investment advice and should not be interpreted as a recommendation to buy, sell, or hold any cryptocurrency, token, or investment instrument. Any decisions made based on the information provided in this DOCS are made at your own risk. Always conduct thorough research and consult with qualified financial advisors before making any investment decisions. The Matrix AI Network, its ecosystem, and the blockchain industry are subject to rapid technological developments, regulatory changes, and market dynamics that can impact the accuracy of the information presented. Any historical data, past performance, or future projections mentioned in this DOCS are not indicative of future results. We disclaim any liability for any direct, indirect, incidental, consequential, or special damages arising out of or in any way connected with the use of this DOCS or reliance on the information provided. Readers are advised to verify the information independently and exercise caution when interpreting the data. By accessing and using this DOCS, you agree to these terms and acknowledge that you are solely responsible for your own decisions and actions.   
   