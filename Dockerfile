# ubuntu bionic
FROM ubuntu:18.04 
WORKDIR /bionitio
COPY . .

RUN apt-get update && apt-get install -y autoconf gcc build-essential zlib1g-dev
RUN autoreconf --install
RUN ./configure
RUN make
RUN make install
