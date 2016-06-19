#!/usr/bin/env bash

# install/update essentials
sudo apt-get install python-software-properties \
                build-essential \
                git \
                nano \
                curl \
                mc \
                -y

# install essentials in order to run FFMPEG
sudo apt-get install autoconf \
                     automake \
                     build-essential \
                     libass-dev \
                     libfreetype6-dev \
                     libsdl1.2-dev \
                     libtheora-dev \
                     libtool \
                     libva-dev \
                     libvdpau-dev \
                     libvorbis-dev \
                     libxcb1-dev \
                     libxcb-shm0-dev \
                     libxcb-xfixes0-dev \
                     pkg-config \
                     texinfo \
                     zlib1g-dev \
                     -y

# install stress to be able to quickly check if the VM can use all of the resources of the host CPU
# usage:
  # for 1 core: stress -c 1
  # for 4 cores: stress -c 4
sudo apt-get install stress -y

# update after essentials (especially after python-software-properties)
sudo apt-get update -y
