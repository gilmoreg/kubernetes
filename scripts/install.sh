#!/bin/bash

# https://www.techrepublic.com/article/how-to-quickly-install-kubernetes-on-ubuntu/

# ref: https://askubuntu.com/a/30157/8698
if ! [ $(id -u) = 0 ]; then
   echo "The script need to be run as root." >&2
   exit 1
fi

apt-get update && apt-get install -y apt-transport-https
apt install docker.io
systemctl start docker
systemctl enable docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
mkdir -p /etc/apt/sources.list.d/
touch /etc/apt/sources.list.d/kubernetes.list
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" >> /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
kubeadm init

