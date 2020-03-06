#!/usr/bin/env bash

helm repo add nsm https://helm.nsm.dev/
sudo helm install nsm/nsm --name my-nsm
