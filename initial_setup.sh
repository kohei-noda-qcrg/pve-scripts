#!/usr/bin/env bash

set -euo pipefail

# Disable pve-enterprise repo and add pve-no-subscription repo
sed -i -e "s/deb/#deb/" /etc/apt/sources.list.d/pve-enterprise.list
echo "deb http://download.proxmox.com/debian/pve buster pve-no-subscription" >> /etc/apt/sources.list

# Upgrade softwares
apt update -y && apt upgrade -y
