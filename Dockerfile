FROM ubuntu:20.04

COPY startjupyter.sh ./

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt update -y
RUN apt install -y wget python3-pip python3-dev ipython3 firefox

RUN pip3 install numpy
RUN pip3 install jupyter

RUN apt install -y python3-pip python3-dev && \
    python3 -m pip install ipykernel && \
    python3 -m ipykernel install && \
    pip3 install numpy

RUN pip3 install torch
RUN pip3 install torchvision
RUN pip3 install pyodm

ENTRYPOINT exec /bin/bash /startjupyter.sh

# RUN apt-get update && apt-get install -y firefox
# CMD /usr/bin/firefox
