#!/bin/bash

git clone https://github.com/sensen1/circuitjs1.git
cp ./pom.xml ./circuitjs1/

docker compose run builder
docker compose build web