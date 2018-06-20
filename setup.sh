#!/usr/bin/env bash
# See https://metacontroller.app/guide/install/
# Create 'metacontroller' namespace, service account, and role/binding.
kubectl apply -f https://raw.githubusercontent.com/GoogleCloudPlatform/metacontroller/master/manifests/metacontroller-rbac.yaml
# Create CRDs for Metacontroller APIs, and the Metacontroller Deployment.
kubectl apply -f https://raw.githubusercontent.com/GoogleCloudPlatform/metacontroller/master/manifests/metacontroller.yaml

kubectl apply -f metacontroller.yaml

