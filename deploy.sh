#!/bin/bash
# ... existing variables ...

echo "Stopping and removing existing containers..."
# Use -f to force remove if running, and ignore errors if it doesn't exist
docker rm -f project3-app || true

echo "Deploying new version to Port 80..."
# Your docker run command here
docker run -d --name project3-app -p 80:80 sooryas20/devops-build-prod:latest
