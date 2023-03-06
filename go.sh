#!/bin/bash
docker-compose --file docker-compose.yml build awscli
docker-compose --file docker-compose.yml up --detach # --remove-orphans
docker-compose --file docker-compose.yml exec awscli bash
