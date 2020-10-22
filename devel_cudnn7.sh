#/bin/bash

export IMAGE_NAME="nvidia/cuda"
export CUDA_VERSION="10.2"
export OS="ubuntu16.04"
export ARCH=`uname -m`

docker build -t "${IMAGE_NAME}:${CUDA_VERSION}-devel-cudnn7-${OS}" --build-arg "IMAGE_NAME=${IMAGE_NAME}" "dist/${CUDA_VERSION}/${OS}-${ARCH}/devel/cudnn7/"

