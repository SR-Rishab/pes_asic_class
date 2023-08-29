# VLSI physical design for ASICs
Repository containing content for course "VLSI physical design of ASIC"

Detailed description of course content can be found in the [repository's wiki](pes_asic_class#wiki)
The following is done on a Fedora 38 Workstation with a 256 GB SSD and 8 GB RAM and an Intel i5 8th gen CPU with Intel UHD integrated graphics card.
<details> 
<summary>Installations</summary>

Installation can be replicated on any Linux distribution (eg.Ubuntu,Arch,NixOS) with slight modifications. 
+ **Installing risc-gnu-toolchain**
   - **To update the repositories (This step will vary depending on your distribution)**
`sudo dnf update` 

   - **Install dependencies for the toolchain (This step WILL vary depending on your distribution)**

      `sudo dnf install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev git` 

   - **Go to your preferred directory/folder and clone the entire riscv toolchain repository**

   `git clone --recursive https://github.com/riscv/riscv-gnu-toolchain`

  OR
   If you want an easier name to remember

   `git clone --recursive https://github.com/riscv/riscv-gnu-toolchain alternative_name`

   - **Go into the cloned directory**

   `cd riscv-gnu-toolchain`

  OR

   `cd alternative_name`

   - **Set up installation directory**

   `./configure --prefix=/opt/riscv --enable-multilib`

  OR

   `./configure --prefix=/your/preferred/directory ----enable-multilib`

   - **Install**

   `make`

   - **DO NOT LET `make` GET INTERUPPTED BY YOUR SYSTEM SUSPENDING AFTER INACTIVITY. Turn autosuspend after inactivity setting off if possible. This step will take about 1 hr to 1 hr 30 min.**

   - **Update path**
   
      Execute this step AFTER the `make` has finished executing.

   `echo 'export PATH=$PATH:/opt/riscv/bin' >> ~/.bashrc;source ~/.bashrc`

  OR

  `echo 'export PATH=$PATH:/your/preferred/directory' >> ~/.bashrc;source ~/.bashrc`

   - **Check if successful**

   `riscv64-unknown-elf-gcc --version`

        If you got the below output, You have installed the riscv-toolchain successfully.

         ```
         riscv64-unknown-elf-gcc (g2ee5e430018) 12.2.0
         Copyright (C) 2022 Free Software Foundation, Inc.
         This is free software; see the source for copying conditions.  There is NO
         warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
         ```
+ **Installing spike risc-v isa simulator**
   - **Clone the reposistory in your preferred directory.**
 
      `git clone https://github.com/riscv-software-src/riscv-isa-sim.git`

   - **Go into the cloned directory and create build directory**

      `cd riscv-isa-sim;mkdir build;cd build`

   - **Configure**

      `../configure --prefix=/preffered/directory`

   - **Make and install**

      `make`

      `[sudo] make install`

   - **Add binaries to path**

      `echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.bashrc
       source ~/.bashrc`

     OR if you are using zsh 

      `echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.zshrc
       source ~/.zshrc`
+ **Install pk (proton-kernel)**
   - **Clone the risv-pk repository in your preffered directory**

      `git clone https://github.com/riscv-software-src/riscv-pk.git`

   - **Change to previous commit of master branch**

      `cd riscv-pk`

      `git checkout 54de960a5e4c91734fcfd454fdc7e593c6ac571d`

   - **Make build directory**

      `mkdir build;cd build`

   - **Configure and install**

      ```
         ../configure --prefix=/preffered/directory/ --host=riscv64-unknown-elf
         make -j8 # because i have 8 core CPU
         [sudo] make install
      ```
   - **Add binaries to path**

      `echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.bashrc
       source ~/.bashrc`

     OR if you are using zsh 

      `echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.zshrc
       source ~/.zshrc`

+ **Install iverilog**
    - **Install dependencies**

      `sudo dnf install autoconf flex gcc bison g++`

   - **Clone the iverilog repository in your preffered directory**

      `git clone https://github.com/steveicarus/iverilog.git`

   - **Configure and install**

      ```
      cd iverilog
      sh autoconf.sh
      ./configure
      sudo su
      make install
      sudo dnf install iverilog
      ```
+ **Installing yosys**
   - **Installing prerequisites**
      ```
      sudo dnf install @development-tools
      sudo dnf install readline-devel bison bison-devel flex flex-devel \
                       libffi-devel mercurial git clang gcc gcc-c++ \
                       python3 tcl-devel graphviz-devel graphviz-tcl \
                       gawk python-xdot iverilog 
      ```
   - **Clone the yosys repository**

   `git clone https://github.com/YosysHQ/yosys.git;cd yosys`

   - **Build from source and install**
      ```
      make
      sudo make install
      ```
</details>

<details>
<summary>Labwork results</summary>

<details> 
<summary>Day 1</summary> 
   
**Introduction to RISC-V ISA and GNU compiler toolchain**
+ Compiling using C program of sum of n numbers using riscv-toolchain
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

+ Spike simulation and Debug

`spike -d pk sum1ton.o` Where the `-d` flag is for debug

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/c5208401-5927-4778-8be7-171641edfb9d)

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/e7bbcc0c-9019-4e08-9d3f-80d9d85d43c9)

+ Lab for signed and unsigned numbers

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
</details>

<details>
<summary>Day 2</summary> 
   
+ Labwork using ABI function calls

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

**Execution results**
![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/622b8f1a-171a-4dcd-ab49-22272ec7f092)

+ C-program on RISC-V CPU

![Screenshot from 2023-08-21 21-29-23](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/6a887f0f-b4df-4394-a9c4-3cdd4c22e856)

**firmware.hex**

![Screenshot from 2023-08-21 21-29-10](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/716e7c9a-2ba2-402b-9a24-09eca5ac5082)
</details>

<details> 
<summary>DAY 3</summary>
   
**Introduction to verilog RTL design and synthesis**

+ Labs using iverilog and gtkwave

![Screenshot from 2023-08-27 18-28-23](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/4319b243-3941-403d-b7a7-15ef5269077b)

![GTKwave](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d4671b11-34c5-4625-b2ea-c78d69454733)

+ Labs using yosys and Sky130 PDKs

![Screenshot from 2023-08-28 17-39-29](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/85632bba-fe14-49fe-bb9f-65ad52e32262)

   - Netlist generated after running `synth -top good_mux`

![Screenshot from 2023-08-28 17-40-12](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/9a797703-7d3b-479f-b9c4-78d8f6cd275b)

   - After running `abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib` for mapping synthesis to lower gate-level representation

![Screenshot from 2023-08-28 17-44-19](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/4615a940-4c19-4506-9032-f7bdffc0140e)

   - Write netlist file using `write_verilog good_mux_netlist.v`

![Screenshot from 2023-08-28 17-45-52](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/049d7e7d-1b81-4f8e-be14-db2488ef0684)

![Screenshot from 2023-08-28 17-47-57](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/6a228ee0-531f-4744-8807-20f6d8056f21)

   - Write simplified netlist file using `write_verilog -noattr good_mux_netlist.v` 

![Screenshot from 2023-08-28 17-48-38](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/42b343fc-be7c-4433-87e4-d41e80d79e45)

![Screenshot from 2023-08-28 17-49-17](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/b3b17618-4693-4256-ae3b-e0afdb155e96)
</details>

<details> 
<summary>Day 4</summary>

   **Timing libs, hierarchical vs flat synthesis and efficient flop coding styles**

+ Hierarchical vs Flat synthesis

   - Read the multiple_modules verilog file

![Screenshot from 2023-08-28 18-38-42](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/0092bef8-786a-4fab-935a-5b7be71555d4)

   - Synthesis of top module

![Screenshot from 2023-08-28 18-48-21](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d1a29383-bb1a-441c-a932-0ad2ec8a4b87)
![Screenshot from 2023-08-28 18-39-13](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/bb950f2a-50dd-4e4d-b4f9-209197935f1d)

   - Block diagram of heirarchical synthesis

![Screenshot from 2023-08-28 18-51-11](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/c015f49e-19d4-49ba-a252-90a7cdc99eef)

   - Block level diagram of flat synthesis

![Screenshot from 2023-08-28 19-06-09](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/7487f8d9-31e5-4576-94b8-d124be89d801)
+ Flop synthesis and simulations
   + Simulations
      - DFF with asynchronous reset
        ![async_reset_terminal](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/81a4b1be-6bb8-4881-a7cc-3cbd4d565727)
        ![async_reset](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/b0ccb276-eb7d-475f-8805-9eb09f8a961a)
      - DFF with synchronous reset
        ![sync_reset_terminal](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d0ada2a2-d84f-475c-81f8-fd796536e092)
        ![sync_reset](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/66af4b77-e626-4ff8-a387-8bc3d371a1d1)
      - DFF with asynchronous set
        ![async_set_terminal](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/20406b0a-e6bd-4876-bf11-b7f1662be9ab)
        ![async_set](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/1983f716-288e-4b2a-996e-601cabafd01a)
   + Synthesis
      - DFF with asynchronous reset
        
      - DFF with synchronous reset
      - DFF with asynchronous set
</details>

</details>
