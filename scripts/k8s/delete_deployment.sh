#!/bin/bash
microk8s kubectl delete deployment halo-deployment -n kube-system
sleep 10
microk8s kubectl get pods -n kube-system
