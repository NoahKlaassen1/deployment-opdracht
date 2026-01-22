#!/usr/bin/env bash
set -e

IMAGE_NAME="noahklaassen/deployment-app"
TAG="${1:-latest}"

echo "Bouwen van image ${IMAGE_NAME}:${TAG}..."
docker build -t ${IMAGE_NAME}:${TAG} .
echo "Image gebouwd: ${IMAGE_NAME}:${TAG}"
