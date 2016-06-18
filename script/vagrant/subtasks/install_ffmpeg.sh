#!/usr/bin/env bash

# move compiled executables to /home/vagrant/bin
mkdir /home/vagrant/bin
cd /root/bin
mv ffmpeg ffplay ffprobe ffserver /home/vagrant/bin
