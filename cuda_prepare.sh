#!/usr/bin/env bash

set -o errrexit
set -o xtrace

# get the standard C-compiler
sudo apt install gcc
gcc --version

# get the standard NVIDIA/CUDA installer
wget http://developer.download.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda_10.1.243_418.87.00_linux.run
sudo sh cuda_10.1.243_418.87.00_linux.run --silent --drive --toolkit


