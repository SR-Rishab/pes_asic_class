#!/bin/bash
# All code lines with CONFIGURE must be changed to your preferences or your system specifications
sudo dnf update
sudo dnf install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev git
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
cd riscv-gnu-toolchain
./configure --prefix=/preffered/directory/ --enable-multilib# CONFIGURE
make -j8 # CONFIGURE
echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.bashrc;source ~/.bashrc # COnFIGURE same path as prefix but with /bin at the end
riscv64-unknown-elf-gcc --version # To check if installation is successful

# Installing spike simulator
git clone https://github.com/riscv-software-src/riscv-isa-sim.git
cd riscv-isa-sim
mkdir build
cd build
../configure --prefix=/preffered/directory # CONFIGURE
make -j8 # CONFIGURE
[sudo] make install # CONFIGRE
echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.bashrc source ~/.bashrc # CONFIGURE same path as prefix but with /bin at the end
#echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.zshrc source ~/.zshrc  # CONFIGURE if you use zsh,same path as prefix but with /bin at the end

# Installing pk (proton kernel)
git clone https://github.com/riscv-software-src/riscv-pk.git
cd riscv-pk
git checkout 54de960a5e4c91734fcfd454fdc7e593c6ac571d
mkdir build
cd build
../configure --prefix=/preffered/directory --host=riscv64-unknown-elf # CONFIGURE
make -j8 # CONFIGURE
[sudo] make install # CONFIGURE
echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.bashrc source ~/.bashrc # CONFIGURE
#echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.zshrc source ~/.zshrc # CONFIGURE

# Installing iverilog
git clone https://github.com/steveicarus/iverilog.git
cd iverilog
sudo dnf install autoconf
sh autoconf.sh
./configure
sudo dnf install flex g++ gcc bison
sudo su
make install
sudo dnf install iverilog
sudo dnf install gtkwave 
