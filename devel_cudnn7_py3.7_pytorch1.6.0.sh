#/bin/bash

export IMAGE_NAME="dldxzjr/cuda"
export CUDA_VERSION="10.2"
export OS="ubuntu16.04"
export ARCH=`uname -m`

docker build -t "${IMAGE_NAME}:${CUDA_VERSION}-devel-cudnn7-py3.7-pytorch1.6.0-tv0.2.2post3-${OS}" --build-arg "IMAGE_NAME=${IMAGE_NAME}" "dist/${CUDA_VERSION}/${OS}-${ARCH}/devel/cudnn7/python3.7/pytorch/"
