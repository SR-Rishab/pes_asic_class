# PES ASIC course
Repository containing content for course "VLSI physical design of ASIC"

The following is done on a Fedora 38 Workstation with a 256 GB SSD and 8 GB RAM.
# Installation

Installation can be replicated on any Linux distribution (eg.Ubuntu,Arch,NixOS) with slight modifications. 
## Prequisites
1.**To update the repositories (This step will vary depending on your distribution)**

`sudo dnf update` 

2.**Install dependencies for the toolchain (This step WILL vary depending on your distribution)**

`sudo dnf install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev git` 

3.**Go to your preferred directory/folder and clone the entire riscv toolchain repository**

`git clone --recursive https://github.com/riscv/riscv-gnu-toolchain`

OR
If you want an easier name to remember

`git clone --recursive https://github.com/riscv/riscv-gnu-toolchain alternative_name`

4.**Go into the cloned directory**

`cd riscv-gnu-toolchain`

OR

`cd alternative_name`

5.**Set up installation directory**

`./configure --prefix=/opt/riscv`

OR

`./configure --prefix=/your/preferred/directory`

6.**Install**

`make`

7.**DO NOT LET `make` GET INTERUPPTED BY YOUR SYSTEM SUSPENDING AFTER INACTIVITY. Turn autosuspend after inactivity setting off if possible. This step will take about 1 hr to 1 hr 30 min.**

8. **Update path**
   
Execute this step AFTER the `make` has finished executing.

`echo 'export PATH=$PATH:/opt/riscv/bin' >> ~/.bashrc;source ~/.bashrc`

OR

`echo 'export PATH=$PATH:/your/preferred/directory' >> ~/.bashrc;source ~/.bashrc`

9.** Check if successful**
`riscv64-unknown-elf-gcc --version`

If you got the below output, You have installed the riscv-toolchain successfully.

```riscv64-unknown-elf-gcc (g2ee5e430018) 12.2.0
Copyright (C) 2022 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.```
```
If not successful, raise an issue in my repository with details about your system and which steps fails.
# Course content
## Day 1 
**Introduction to RISC-V ISA and GNU compiler toolchain**

### 1.Introduction to RISC-V basic keywords

### 2.Labwork for RISC-V software toolchain
### 3.Integer number description
## Day 2 
### 1.Application Binary Interface (ABI)
### 2.Labwork using ABI function calls
### 3.Basic verification flow using iverilog
## Day 3
### 1.Combinational logic in TL-Verilog using Makerchip
### 2.Sequential logic
### 3.Pipelined logic
### 4.Validation and wrap-up
