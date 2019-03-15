#!/bin/bash
snap install microk8s --classic
sudo snap alias microk8s.kubectl kubectl
microk8s.status --wait-ready
kubectl get nodes
kubectl get services
microk8s.enable dns ingress
sudo iptables -P FORWARD ACCEPT
