#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define image name and tag
IMAGE_NAME="us-central1-docker.pkg.dev/georgef-sandbox/groceries/groceries-backend-cloud-sql-proxy"

# Build the Docker image
echo "Building Docker image: $IMAGE_NAME"
docker build -t "$IMAGE_NAME" .

# Push the Docker image
echo "Pushing Docker image: $IMAGE_NAME"
docker push "$IMAGE_NAME"

echo "Docker image build and push completed successfully."