apt-get update -y
apt-get install curl -y

curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --node-ip=192.168.56.110 --write-kubeconfig-mode=644" sh -s

sudo echo "192.168.56.110 app1.com" >> "/etc/hosts"
sudo echo "192.168.56.110 app2.com" >> "/etc/hosts"
sudo echo "192.168.56.110 app3.com" >> "/etc/hosts"