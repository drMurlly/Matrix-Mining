# build from stock debian image
FROM debian:latest

# install needed packages
RUN apt-get update && apt-get install -y procps wget net-tools cron && rm -rf /var/lib/apt/lists/*

# add files from drMurlly local repo
ADD ./matrix/gman ./matrix/logCleanup ./matrix/MANGenesis.json ./matrix/man.json ./matrix/nodeConfig.sh ./matrix/
ADD ./matrix/picstore ./matrix/picstore/
# ADD ./matrix/snapdir ./matrix/snapdir/

# grab files from official matrix repo and set execute permissions
# If the files changed then the links changed also. The Image need to be updated. The image need to be updated in eather case.
# Disabled by me. ADD files manualy above.
# RUN cd /matrix && wget https://github.com/MatrixAINetwork/GMAN_CLIENT/raw/master/MAINNET/20200520/linux/gman https://raw.githubusercontent.com/MatrixAINetwork/GMAN_CLIENT/master/MAINNET/20200520/MANGenesis.json https://raw.githubusercontent.com/MatrixAINetwork/GMAN_CLIENT/master/MAINNET/20200520/man.json && chmod a+x gman && alias man="/matrix/gman attach /matrix/chaindata/gman.ipc"

# Start node using script that sets a random entrust password
ENTRYPOINT ["./matrix/nodeConfig.sh"]
