#!/usr/bin/env bash

# |--------------------------------------------------------------------------------------------------------------------
# | Vagrant Provision Script
# |--------------------------------------------------------------------------------------------------------------------

export _VAGRANT_DIR="/vagrant"
export _SCRIPT_DIR="$_VAGRANT_DIR/script"
export _PROVISION_DIR="$_SCRIPT_DIR/vagrant"
export _SUBTASKS_DIR="$_PROVISION_DIR/subtasks"
export _CONTENT_DIR="$_PROVISION_DIR/content"

# enter permanent su
sudo su

# update before provisioning
apt-get update -y

# install essentials
"$_SUBTASKS_DIR/install_essentials.sh"

# install gcc
"$_SUBTASKS_DIR/install_gcc.sh"

# install git
"$_SUBTASKS_DIR/install_git.sh"

# install python
"$_SUBTASKS_DIR/install_python.sh"

# install PHP
"$_SUBTASKS_DIR/install_php.sh"

# exit sudo mode
su vagrant

# install custom content
"$_SUBTASKS_DIR/install_custom_content.sh"

# compile & install FFMPEG
"$_SUBTASKS_DIR/compile_ffmpeg.sh"
"$_SUBTASKS_DIR/install_ffmpeg.sh"
