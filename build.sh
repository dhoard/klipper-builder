#!/bin/bash

# Check if an argument is provided
if [ $# -gt 1 ]; then
    echo "Usage: $0 <Klipper directory>"
    exit 1
fi

if [ $# -eq 0 ]; then
  KLIPPER_DIRECTORY=.
else
  KLIPPER_DIRECTORY=$1
fi

# Check if the directory exists
if [ ! -d "${KLIPPER_DIRECTORY}" ]; then
    echo "Error: Directory '${KLIPPER_DIRECTORY}' does not exist."
    exit 1
fi

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed."
    exit 1
fi

# Check if the user can run Docker commands
if ! docker info &> /dev/null; then
    echo "Error: Current user does not have permission to run Docker commands."
    exit 1
fi

# Get the absolute path to the Klipper directory
KLIPPER_DIRECTORY=$(readlink -f "${KLIPPER_DIRECTORY}")

# Build Klipper using Docker
docker run --rm --user $(id -u):$(id -g) -v ${KLIPPER_DIRECTORY}:/klipper klipper-builder
