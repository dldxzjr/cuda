#/bin/bash

export IMAGE_NAME="nvidia/cuda"
export CUDA_VERSION="10.2"
export OS="ubuntu16.04"
export ARCH=`uname -m`

docker build -t "${IMAGE_NAME}:${CUDA_VERSION}-base-${OS}" "dist/${CUDA_VERSION}/${OS}-${ARCH}/base"

