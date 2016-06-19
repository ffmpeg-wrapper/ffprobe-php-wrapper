#!/usr/bin/env bash

# |--------------------------------------------------------------------------------------------------------------------
# | Vagrant Provision Script
# |--------------------------------------------------------------------------------------------------------------------

export _VAGRANT_DIR="/vagrant"
export _SCRIPT_DIR="$_VAGRANT_DIR/script"
export _PROVISION_DIR="$_SCRIPT_DIR/vagrant"
export _SUBTASKS_DIR="$_PROVISION_DIR/subtasks"
export _CONTENT_DIR="$_PROVISION_DIR/content"

# update before provisioning
sudo apt-get update -y

# install essentials
"$_SUBTASKS_DIR/install_essentials.sh"

# install git
"$_SUBTASKS_DIR/install_git.sh"

# install python
"$_SUBTASKS_DIR/install_python.sh"

# install PHP
"$_SUBTASKS_DIR/install_php.sh"

# install custom content
"$_SUBTASKS_DIR/install_custom_content.sh"
