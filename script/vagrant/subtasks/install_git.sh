#!/usr/bin/env bash

# install/update git
add-apt-repository ppa:git-core/ppa -y
apt-get update -y
apt-get install git -y
