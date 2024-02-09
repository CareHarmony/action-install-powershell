#!/bin/bash
# Install the azure-cli tool on Ubuntu or other Debian-based OS,

sudo apt-get update

# Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common

# Get the version of Ubuntu
AZ_REPO=$(lsb_release -cs)

wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"

# Register the Microsoft repository keys
sudo dpkg -i packages-microsoft-prod.deb

# Delete the Microsoft repository keys file
rm packages-microsoft-prod.deb

sudo apt-get update
sudo apt-get install -y powershell