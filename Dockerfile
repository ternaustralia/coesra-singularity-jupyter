FROM ubuntu:18.04

COPY startjupyter.sh ./

RUN apt update -y
RUN apt install -y wget python3-pip python3-dev ipython firefox

RUN pip3 install numpy
RUN pip3 install jupyter

RUN apt install -y python3-pip python3-dev && \
    python3 -m pip install ipykernel && \
    python3 -m ipykernel install && \
    pip3 install numpy

RUN pip3 install https://download.pytorch.org/whl/cpu/torch-1.0.1.post2-cp36-cp36m-linux_x86_64.whl
RUN pip3 install torchvision

ENTRYPOINT exec /bin/bash /startjupyter.sh

# RUN apt-get update && apt-get install -y firefox
# CMD /usr/bin/firefox