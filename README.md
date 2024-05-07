# klipper-builder

Code to build a Docker image to build Klipper

## Usage

Build the Docker image

```
cd docker
./build-docker-image.sh
```

Build Klipper

```
git clone https://github.com/Klipper3d/klipper
cd klipper
make menuconfig
../build-klipper.sh .
```
