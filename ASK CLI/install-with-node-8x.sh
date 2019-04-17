apt-get update; apt-get install curl; apt-get install sudo
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs
sudo npm install -g ask-cli

ask init --aws-setup
ask init --no-browser
