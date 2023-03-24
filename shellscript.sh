#!/bin/bash

# application deployment script

echo "Starting script execution"
az aks get-credentials --resource-group SREExecutive --name $1
git clone https://github.com/GoogleCloudPlatform/microservices-demo.git
echo "Cloning the terraform script......."
sleep 10
kubectl apply -f ./microservices-demo/release/kubernetes-manifests.yaml
echo "Creating the deployments......."
sleep 30
kubectl get pods
sleep 5
kubectl get service frontend-external
echo "Script execution completed"