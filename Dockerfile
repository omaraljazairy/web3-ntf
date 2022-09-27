FROM node:16.17.0

WORKDIR /blockchain

RUN apt-get update
RUN apt-get install -y wget vim git zip unzip less sqlite3 bsdmainutils bc tree

# copy the node app to the blockchain container
COPY ./package.json /blockchain

# install packages from the package.json file
RUN npm install