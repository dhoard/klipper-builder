# klipper-builder

Code to build a Docker image to build Klipper

## Usage

Build the `klipper-builder` Docker image

```
cd ~
git clone https://github.com/dhoard/klipper-builder
cd klipper-builder/docker
./build-docker-image.sh
```

Build Klipper

```
cd ~
git clone https://github.com/Klipper3d/klipper
cd klipper
make menuconfig
../klipper-builder/build-klipper.sh .
```
