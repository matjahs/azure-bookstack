#!/usr/bin/env bash

# login to Azure Container Registry
docker login acrwikidev1.azurecr.io -u acrwikidev1

# tag and push mysql image
docker tag mysql:5.7.21 acrwikidev1.azurecr.io/mysql:latest
docker push acrwikidev1.azurecr.io/mysql:latest

# tag and push bookstack image
docker tag linuxserver/bookstack:amd64-latest acrwikidev1.azurecr.io/app:latest
docker push acrwikidev1.azurecr.io/app:latest
