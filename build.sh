#!/bin/bash

git clone --branch bhu https://github.com/sensen1/circuitjs1.git
cp ./pom.xml ./circuitjs1/

docker compose run builder
COMPOSE_PROJECT_NAME=bhu_circuitjs1_v1 docker compose build web