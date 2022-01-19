#!/bin/bash
POD_NAME=$1
PROC_ID=$2
echo "Dump process $PROC_ID on pod $POD_NAME, will save to /dump"
microk8s kubectl exec -n kube-system $POD_NAME -- bash -c "rm -rf /dump && mkdir /dump && cd /dump && /criu/criu/criu dump -v4 -t $PROC_ID --tcp-established --ghost-limit 10485760"
