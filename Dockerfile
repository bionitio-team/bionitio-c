# ubuntu bionic
FROM ubuntu:18.04 
WORKDIR /bionitio
COPY . .

RUN apt-get install autoconf 
RUN autoreconf --install
RUN ./configure
RUN make
RUN make install

ENTRYPOINT ["bionitio"]
