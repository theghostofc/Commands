#!/bin/bash

# Essential CLI tools
echo "Installing Hyperledger Tools"
npm install -g composer-cli

# Utility for running a REST Server on your machine to expose your business networks as RESTful APIs
npm install -g composer-rest-server

# Useful utility for generating application assets
npm install -g generator-hyperledger-composer

# Yeoman is a tool for generating applications, which utilises generator-hyperledger-composer
npm install -g yo

# Install Playground
# Browser app for simple editing and testing Business Networks
npm install -g composer-playground

echo "Installing Hyperledger Fabric"
# Install Hyperledger Fabric
mkdir /var/fabric-tools
cd /var/fabric-tools
curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.zip
unzip fabric-dev-servers.zip

# Download a local Hyperledger Fabric runtime
/bin/bash ./downloadFabric.sh
/bin/bash ./startFabric.sh
/bin/bash ./createPeerAdminCard.sh
composer-playground
#/bin/bash ./stopFabric.sh
