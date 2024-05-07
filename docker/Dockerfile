FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
        make \
        gcc-arm-none-eabi \
        cpp \
        python3 \
        binutils \
        git

RUN apt-get clean && \
        rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash klipper-builder

WORKDIR /klipper

USER klipper-builder

CMD ["/bin/bash", "-c", "make clean;make"]
