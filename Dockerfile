FROM i386/ubuntu:16.04

RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \
    apt-get update && \
    apt-get install -y git \
        build-essential \
        wine1.6-dev libc6-dev libstdc++6-4.7-dev libusb-1.0-0-dev libudev-dev pkg-config \
        mingw-w64 cmake p7zip-full curl \
        zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
