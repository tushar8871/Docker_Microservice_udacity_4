#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath=tushar887/flask

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f ./flask-deploy.yaml

read -p "Pause Time 5 seconds" -t 5
echo "Continuing......."
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $(kubectl get po -o=name | grep flask) 8000:80