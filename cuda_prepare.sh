#!/usr/bin/env bash

set -o errrexit
set -o xtrace

# get the standard C-compiler
sudo apt-get install -y gcc
echo `gcc --version`

# get the standard NVIDIA/CUDA installer
curl -O http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
sudo apt-get update
rm cuda-repo-ubuntu1604_8.0.61-1_amd64.deb

sudo apt-get install -y cuda-10-0

echo 'export CUDA_HOME=/usr/local/cuda' >> ~/.bashrc
echo 'export PATH=$PATH:$CUDA_HOME/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_HOME/lib64' >> ~/.bashrc

# TO-TEST MANUALLY
# source ~/.bashrc
# nvcc --version
# nvidia-smi


