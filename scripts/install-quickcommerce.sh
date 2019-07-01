# Install node
sudo apt-get install curl python-software-properties
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

# Install nodejs, yarn and webpack
sudo apt-get install nodejs &&
sudo apt-get install webpack &&
npm install -g yarn &&
yarn add global webpack@3.8.1


