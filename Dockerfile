FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install wget git maven python3 -y
RUN git clone https://github.com/pfalstad/circuitjs1.git
WORKDIR /circuitjs1
RUN wget -q https://github.com/E3V3A/circuitjs1/raw/master/ecl2mvn.sh
RUN chmod +x ecl2mvn.sh
RUN ./ecl2mvn.sh
RUN mvn install
WORKDIR /circuitjs1/target/site

CMD ["python3", "-m", "http.server"]