# VLSI physical design for ASICs
Repository containing content for course "VLSI physical design of ASIC"

Detailed description of course content can be found in the repository's wiki
The following is done on a Fedora 38 Workstation with a 256 GB SSD and 8 GB RAM.
# Installation

Installation can be replicated on any Linux distribution (eg.Ubuntu,Arch,NixOS) with slight modifications. 
## Prequisites
### Installing risc-gnu-toolchain
1. **To update the repositories (This step will vary depending on your distribution)**
`sudo dnf update` 

2. **Install dependencies for the toolchain (This step WILL vary depending on your distribution)**

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

```
riscv64-unknown-elf-gcc (g2ee5e430018) 12.2.0
Copyright (C) 2022 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```
### Installing spike risc-v isa simulator
1. **Clone the reposistory in your preferred directory.**
 
`git clone https://github.com/riscv-software-src/riscv-isa-sim.git`

2. **Go into the cloned directory and create build directory**

`cd riscv-isa-sim;mkdir build;cd build`

3.**Configure**

`../configure --prefix=/preffered/directory`

4.**Make and install**

`make`

`[sudo] make install`

5.**Add binaries to path**

`echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.bashrc
source ~/.bashrc`

OR if you are using zsh 

`echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.zshrc
source ~/.zshrc`
### Install pk (proton-kernel)
1.**Clone the risv-pk repository in your preffered directory**

`git clone https://github.com/riscv-software-src/riscv-pk.git`

2.**Change to previous commit of master branch**

`cd riscv-pk`

`git checkout 54de960a5e4c91734fcfd454fdc7e593c6ac571d`

3. **Make build directory**

`mkdir build;cd build`

4. **Configure and install**

```../configure --prefix=/preffered/directory/ --host=riscv64-unknown-elf
   make -j8 # because i have 8 core CPU
   [sudo] make install
```
5.**Add binaries to path**

`echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.bashrc
source ~/.bashrc`

OR if you are using zsh 

`echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.zshrc
source ~/.zshrc`


# Labwork results
## Day 1 
**Introduction to RISC-V ISA and GNU compiler toolchain**
### Compiling using C program of sum of n numbers using riscv-toolchain
**C program written in VIM editor**

```C
#include<stdio.h>
int main()
{
        int i,sum=0,n=10;
        for(i=1;i<=n;i++)
                sum+=i;
        printf("Sum of numbers from 1 to %d is %d",n,sum);
        return 0;
}
```
**Compilation and execution results**

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/1d4df3f6-e2f7-4168-b143-e04b170e7628)

**Generating Assembly code**

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/336898dd-b297-47a0-a225-a0c71656c449)

In the vim editor,type `/<main>` and press ENTER and press n untill you find the below code block

**Using compile flacg `-O1`**

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d63ea4e0-0fa6-489b-99d7-e8112daa36ee)

**Using compile flag `-Ofast`**

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/843fdca0-f134-4fd7-9dad-d9899aed9ead)

### Spike simulation and Debug

`spike -d pk sum1ton.o` Where the `-d` flag is for debug

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/c5208401-5927-4778-8be7-171641edfb9d)

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/e7bbcc0c-9019-4e08-9d3f-80d9d85d43c9)

### Lab for signed and unsigned numbers
**Unsigned numbers**
```C
#include<stdio.h>
#include<math.h>
int main()
{
        long long int max = (long long int) (pow(2,10)*-1);
        printf("Highest number represented by unsigned long long int is %lld\n",max);
        return 0;
}
```

![Screenshot from 2023-08-21 09-10-54](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/9531d25e-3978-4670-8f7c-2a85466f1351)

**Signed numbers**

```C
#include<stdio.h>
#include<math.h>

int main()
{
        long long int max = (int) (pow(2,63) -1);
        long long int min = (int) (pow(2,63)*-1);
        printf("This highest number represented by long long int is %d",max);
        printf("This lowest number represented by long long int is %d",min);
        return 0;
}
```

![Screenshot from 2023-08-21 09-22-13](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/64257d3d-4ae9-4c93-9932-f33d164e53a9)

## Day 2 
### Labwork using ABI function calls
**C program**

```C
#include<stdio.h>

extern int load(int x,int y);

int main()
{
   int result = 0;
   int count = 9;
   result = load(0x0, count+1);
   printf("Sum of number from 1 to %d is %d\n",count, result);

}
```

**Assembly code**

```Assembly
.section .text
.global load
.type load, @function
load:
add a4, a0, zero //Initialize sum register a4 with 0x0
add a2, a0, a1   //Store count of 10 in register a2. Register a1 is loaded with 0xa (decimal 10) from main
add a3, a0, zero //Initialize intermediate sum register a3 by 0
loop:
add a4, a3, a4 //Incremental addition
addi a3, a3, 1 //Increment intermediate register by 1
blt a3, a2, loop //If a3 is less than a2, branch to label named <loop>
add a0, a4, zero //Store final result to register a0 so that it can be read by main program
ret
```
## Day 3

