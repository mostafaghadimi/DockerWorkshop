#!/bin/bash 

docker run \
  -e DB_NAME='postgres' \
  -e DB_USER='postgres' \
  -e DB_PASSWORD='postgres' \
  -e DB_HOST='postgres' \
  -e DB_PORT='5432' \
  datadays-backend:1.0.0 
  
