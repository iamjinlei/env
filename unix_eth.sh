#!/bin/bash

#
# This script installs basic ethereum development tool chains for CentOs system
#

set -e
set -x

mkdir -p ~/tmp

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

PS1="ssh" source ~/.bashrc

nvm install node
# Got keccak build error on truffle@^5.0.0
npm install -g truffle@4.1.15

#pushd ~/tmp && curl -sL https://rpm.nodesource.com/setup_10.x | bash && yum install -y nodejs && popd
# npm install ganache-cli web3@1.0.0-beta.37
rm -rf ~/tmp
