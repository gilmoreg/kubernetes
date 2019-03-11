#!/bin/bash
snap install microk8s --classic
microk8s.status --wait-ready
microk8s.kubectl get nodes
microk8s.kubectl get services
snap alias microk8s.kubectl kubectl
microk8s.enable dns ingress
sudo iptables -P FORWARD ACCEPT
