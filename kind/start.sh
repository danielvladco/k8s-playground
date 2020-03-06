#!/usr/bin/env bash

kind create cluster --config ./kind.yaml
kubectl cluster-info --context kind-kind
