FROM ubuntu:20.04
RUN apt-get update &&\
    apt-get upgrade -qq &&\
    DEBIAN_FRONTEND=noninteractive apt-get install -y libgoogle-perftools-dev make cmake g++ lcov python3 python3-pip libboost-all-dev wget unzip  && pip3 install loguru &&\
    rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/STEllAR-GROUP/hpx/archive/1.5.0.zip && unzip 1.5.0.zip && cd hpx-1.5.0 && mkdir build && cd build && \
    cmake .. -DHPX_WITH_EXAMPLES=OFF -DHPX_WITH_TESTS=OFF && make install
