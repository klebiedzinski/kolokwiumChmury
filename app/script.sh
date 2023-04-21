#!/bin/bash
sudo docker builder prune -f
# GIT_REPO=$1
# echo "GIT_REPO=$GIT_REPO"
sudo docker network create kolos_network --driver bridge
# sudo docker build -t kolokwium --build-arg GIT_REPO=$GIT_REPO .
sudo docker run --rm -d --network kolos_network -p 3030:3030 kolokwium
