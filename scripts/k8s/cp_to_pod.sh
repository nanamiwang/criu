#!/bin/bash
POD_NAME=$1
microk8s kubectl cp -n kube-system dump $POD_NAME:/dump
microk8s kubectl exec -n kube-system $POD_NAME -- bash -c "mkdir -p /root/.ipython/profile_default"
microk8s kubectl cp -n kube-system tmp_files/history.sqlite $POD_NAME:/root/.ipython/profile_default/history.sqlite
microk8s kubectl cp -n kube-system tmp_files/halo-kernel $POD_NAME:/tmp/halo-kernel
