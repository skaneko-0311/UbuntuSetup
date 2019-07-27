#!/bin/sh -e

sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update -y

sudo apt-get install docker-ce -y

sudo apt-get install docker-compose -y

sudo apt-get install emacs25 -y

mkdir $HOME/github

mkdir $HOME/github/pyenv

git clone https://github.com/pyenv/pyenv.git $HOME/pyenv

echo 'export PYENV_ROOT="$HOME/pyenv"' >> $HOME/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> $HOME/.profile

source ~/.profile

sudo apt-get install -y \
    gcc \
    make \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    llvm \
    libncurses5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev

pyenv install -s 3.7.4

pyenv local 3.7.4

pyenv versions