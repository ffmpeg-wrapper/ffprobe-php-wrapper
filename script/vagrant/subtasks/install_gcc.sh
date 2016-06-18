#!/usr/bin/env bash

# install gcc 4.9
add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt-get update -y

apt-get install gcc-4.9 -y
apt-get install g++-4.9 -y

update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 20
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 20

update-alternatives --config gcc
update-alternatives --config g++
