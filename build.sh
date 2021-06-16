#!/bin/bash

git clone https://github.com/pfalstad/circuitjs1.git
cp ./pom.xml ./circuitjs1/

docker compose run builder
docker compose build web