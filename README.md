# docker-circuitjs1
Dockerfile for [CircuitJS1](https://github.com/pfalstad/circuitjs1) build/deployment.

Utilizes the Maven conversion script from [E3V3A](https://github.com/E3V3A/circuitjs1).

## Usage
```
docker build . --tag circuitjs1
docker run -P -p 8000:8000 circuitjs1
```
