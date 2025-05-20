#!/bin/bash

set -e

wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh

chmod +x dotnet-install.sh

DOTNET_VERSION=9.0.203

./dotnet-install.sh --version $DOTNET_VERSION --install-dir $HOME/.dotnet

if ! grep -q 'export DOTNET_ROOT' ~/.bashrc; then
  echo 'export DOTNET_ROOT=$HOME/.dotnet' >> ~/.bashrc
  echo 'export PATH=$PATH:$HOME/.dotnet:$HOME/.dotnet/tools' >> ~/.bashrc
fi

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$HOME/.dotnet:$HOME/.dotnet/tools