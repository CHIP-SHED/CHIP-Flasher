# CHIP-Flasher

This is a Dockerfile that downloads the Flash-CHIP tool from this repo (https://github.com/CHIP-SHED/Flash-CHIP) and uses that to flash CHIPs locally.

# Instructions
1. Remove the CHIP from the case if it is in one
2. Connect FEL and GND with a jumper wire
3. Connect the CHIP to the computer over USB
4. Run `docker build -t chip-flash .` to build the container from the image
5. Run `docker run -it --privileged -v /dev:/dev chip-flash bash` to run the docker container in a bash shell bash
6. Run `cd Flash-CHIP`
7. Run `./Flash.sh`