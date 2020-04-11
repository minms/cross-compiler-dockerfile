FROM cross-compler:nanopc-t3

COPY 3rdparty/* /opt/

RUN apt-get install -y cmake