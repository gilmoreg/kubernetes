#!/bin/bash

# https://helm.sh/docs/using_helm/#installing-helm
cd ~
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh
helm init
