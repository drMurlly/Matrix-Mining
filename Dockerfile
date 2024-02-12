# build from stock debian image
FROM debian:latest

# install needed packages
RUN apt-get update && apt-get install -y procps wget net-tools cron && rm -rf /var/lib/apt/lists/*

# add files from drMurlly local repo
ADD ./matrix/gman ./matrix/logCleanup ./matrix/MANGenesis.json ./matrix/man.json ./matrix/nodeConfig.sh ./matrix/
ADD ./matrix/picstore ./matrix/picstore/

# Start node using script that sets a random entrust password
ENTRYPOINT ["./matrix/nodeConfig.sh"]
