#!/usr/bin/env bash

# install/update python 2.7.x
add-apt-repository ppa:fkrull/deadsnakes-python2.7 -y
apt-get update -y
apt-get install python2.7 -y
