# Additional scripts
   
Here you'll find various scripts that'll make managing your multiple matrix mining masternodes a lot easier.
   
If you need more scripts to help manage your miners, please drag me into the Matrix Telegram group, and I can write some additional scripts for you.    
   
   
To get access to the latest scripts, you need to clone the drMurlly's GitHub repository.
```    
cd ~ && git clone https://github.com/drMurlly/Matrix-Mining.git
```    
   
      
### downloadTheFullySyncedChain.sh
The scripts download the Fully Synced Matrix Blockchain from drMurlly's cloud.    
You can use this script if you have already been running the mining controller nodes and want to update the chain with a new snapshot.    
   
Run the script with following command   
```    
cd ~/Matrix-Mining/scripts && chmod 755 downloadTheFullySyncedChain.sh && ./downloadTheFullySyncedChain.sh
```    
   

### matrixCheck.sh
The scripts Check Mining, Syncing, Net_Status or Block_Number status.

For first use, you need to download the script.   
```    
cd ~/Matrix-Mining/scripts && chmod 755 matrixCheck.sh && mv matrixCheck.sh matrixCheck && cp matrixCheck /usr/bin && matrixCheck
 ```     
      
If you already have the script on your machine, you can run the following command.   
```    
matrixCheck
 ```  



      