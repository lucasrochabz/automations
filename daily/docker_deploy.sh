#!/bin/bash

# Uso: ./docker_deploy.sh lucasrochabz/minha-api 1.2.3

# Nome e versão da imagem (ambos obrigatórios)
IMAGE_NAME="$1"
VERSION="$2"

if [ -z "$IMAGE_NAME" ] || [ -z "$VERSION" ]; then
  echo "Erro: Nome da imagem e versão são obrigatórios."
  echo "Uso: ./docker_deploy.sh <imagem> <versão>"
  exit 1
fi

echo "Realizando login no Docker Hub..."
docker login || { echo "Falha no login. Encerrando."; exit 1; }

echo "Buildando imagem: $IMAGE_NAME:$VERSION"
docker build -t "$IMAGE_NAME:$VERSION" .

echo "Fazendo push da imagem: $IMAGE_NAME:$VERSION"
docker push "$IMAGE_NAME:$VERSION"

echo "✅ Deploy finalizado com sucesso!"
