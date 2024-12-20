#!/bin/bash

if [ "$WITH_SUDO" == "true" ]; then
    SUDO="sudo"
else
    SUDO=""
fi

${SUDO} apt-get update

# Install pre-requisite packages.
${SUDO} apt-get install -y wget apt-transport-https software-properties-common lsb-release apt-utils

wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"

# Register the Microsoft repository keys
${SUDO} dpkg -i packages-microsoft-prod.deb

# Delete the Microsoft repository keys file
rm packages-microsoft-prod.deb

${SUDO} apt-get update
${SUDO} apt-get install -y powershell
