#!/bin/bash 

docker network create datadays
docker run \
  --net datadays \
  -e POSTGRES_USER='postgres' \
  -e POSTGRES_PASSWORD='postgres' \
  -e POSTGRES_DB='postgres' \
  --name postgres
  postgres:14
