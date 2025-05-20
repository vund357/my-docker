#!/bin/bash

set -e

export NVM_DIR="$HOME/.nvm"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Tải NVM vào current shell session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Cài đặt Node.js 22
nvm install 22
nvm use 22
nvm alias default 22

npm install -g yarn

if ! grep -q 'NVM_DIR' "$HOME/.bashrc"; then
  echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
  echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
fi