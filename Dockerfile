FROM ubuntu AS builder
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install wget git maven python3 -y
WORKDIR /circuitjs1

CMD ["mvn", "install"]

FROM ubuntu AS web
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install python3 -y
COPY ./circuitjs1/target/site /circuitjs1
WORKDIR /circuitjs1

CMD ["python3", "-m", "http.server"]