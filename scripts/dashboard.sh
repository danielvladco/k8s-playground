#!/usr/bin/env bash

helm repo update
helm install stable/kubernetes-dashboard --namespace kube-system --name dashboard --set=rbac.clusterAdminRole=true,service.externalPort=8080,enableInsecureLogin=true,enableSkipLogin=true,fullnameOverride=kubernetes-dashboard
