FROM ubuntu:bionic

RUN apt-get update
RUN apt-get install -y git unzip libfdt-dev android-tools-fastboot sunxi-tools u-boot-tools wget sudo
RUN git clone https://github.com/CHIP-SHED/Flash-CHIP; cd Flash-CHIP; chmod +x Flash.sh
RUN apt-get install -y pkg-config libusb-1.0-0-dev libz-dev gcc make
RUN git clone https://github.com/linux-sunxi/sunxi-tools; cd sunxi-tools; make; cp sunxi-fel /usr/bin
