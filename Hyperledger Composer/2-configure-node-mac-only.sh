#!/bin/bash

# Check that nvm is installed and is accessible
nvm —-version

# Install the latest (long term support) version of Node
nvm install --lts

# Switch to the LTS version of Node
nvm use --lts

# Check that Node is installed
node --version
