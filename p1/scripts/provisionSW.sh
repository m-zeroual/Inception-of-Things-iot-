#!/bin/bash

apt-get update -y
apt-get install  curl bash -y

until curl -k https://192.168.56.110:6443; do sleep 1; done
curl -sfL https://get.k3s.io | K3S_URL=https://192.168.56.110:6443 INSTALL_K3S_EXEC="agent --node-ip=192.168.56.111" K3S_TOKEN="mzeroual_cluster_token" sh -s
