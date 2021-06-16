# docker-circuitjs1
Dockerfile for [CircuitJS1](https://github.com/pfalstad/circuitjs1) build/deployment.

Utilizes the Maven conversion script from [E3V3A](https://github.com/E3V3A/circuitjs1).

## Usage
```
./build.sh
docker run -p 127.0.0.1:8000:8000 docker-circuitjs1_web
```

Navigate to http://localhost:8000/circuitjs.html