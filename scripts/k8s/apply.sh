#!/bin/bash
microk8s kubectl apply -f ~/criu_test/my_halo_back.yml
sleep 10
microk8s kubectl get pods -n kube-system
