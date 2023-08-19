#!/bin/bash
sudo dnf update
sudo dnf install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev git
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain
./configure --prefix=/home # You can change it to your preferred directory
make
echo 'export PATH=$PATH:/home/bin' >> ~/.bashrc;source ~/.bashrc # Make sure the path is $PATH:/preferred/directory/bin
riscv64-unknown-elf-gcc --version # To check if installation is successful
