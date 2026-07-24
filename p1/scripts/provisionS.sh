#!/bin/bash

apt-get update -y
apt-get install curl bash -y

curl -sfL https://get.k3s.io | K3S_TOKEN="mzeroual_cluster_token" INSTALL_K3S_EXEC="server --node-ip=192.168.56.110 --write-kubeconfig-mode=644" sh -s
