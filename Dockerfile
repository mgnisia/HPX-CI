FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade -qq && apt-get install -qq build-essential git python3 curl sudo python3-pip python-setuptools unzip

# Create new user user_spack 
RUN useradd --create-home --shell /bin/bash user_spack
RUN echo 'user_spack:spack' | chpasswd
RUN usermod -aG sudo user_spack
USER user_spack
WORKDIR /home/user_spack

# Setup Spack
RUN git clone https://github.com/spack/spack && cd spack && git checkout releases/v0.14 && . share/spack/setup-env.sh
RUN mkdir -p /home/user_spack/.spack
COPY packages.yaml /home/user_spack/.spack/packages.yaml
RUN . ~/spack/share/spack/setup-env.sh &&\
    spack install hpx@1.4.1