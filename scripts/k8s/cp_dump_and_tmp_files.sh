#!/bin/bash
POD_NAME=$1
rm -rf dump/*
microk8s kubectl cp -n kube-system $POD_NAME:/dump dump/
rm -rf tmp_files/*
microk8s kubectl cp -n kube-system $POD_NAME:/root/.ipython/profile_default/history.sqlite tmp_files/history.sqlite
microk8s kubectl cp -n kube-system $POD_NAME:/tmp/halo-kernel tmp_files/halo-kernel
