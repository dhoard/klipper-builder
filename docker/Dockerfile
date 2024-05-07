FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
        make \
        gcc-arm-none-eabi \
        cpp \
        python3 \
        binutils

RUN useradd -ms /bin/bash klipper-builder

WORKDIR /klipper

USER klipper-builder

CMD ["make"]
