#!/bin/bash
sudo docker builder prune -f
PORT=$1
echo "PORT=$PORT"
sudo docker network create kolos_network --driver bridge
sudo docker build -t kolokwium --build-arg PORT=$PORT .
sudo docker run --rm -d --network kolos_network -p 3030:3030 kolokwium