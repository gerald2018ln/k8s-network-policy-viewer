#!/bin/bash
kubectl get pod,networkpolicy --all-namespaces -o json >testdata.json
../k8s-network-policy-viewer testdata.json >testdata.dot
dot testdata.dot -Tsvg >testdata.svg 
