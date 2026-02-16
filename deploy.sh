#!/bin/bash

echo "Stopping and removing existing containers..."
docker rm -f project3-app || true

echo "Deploying new version to Port 80..."
docker run -d --name project3-app -p 80:80 sooryas20/devops-build-prod:latest
