# VLSI physical design for ASICs
Repository containing content for course "VLSI physical design of ASIC"

Detailed description of course content can be found in the [repository's wiki](pes_asic_class#wiki)
The following is done on a Fedora 38 Workstation with a 256 GB SSD and 8 GB RAM and an Intel i5 8th gen CPU with Intel UHD integrated graphics card.
# Installation


Installation can be replicated on any Linux distribution (eg.Ubuntu,Arch,NixOS) with slight modifications. 
<details> 
<summary>Installing risc-gnu-toolchain</summary>

+ **To update the repositories (This step will vary depending on your distribution)**
`sudo dnf update` 

+ **Install dependencies for the toolchain (This step WILL vary depending on your distribution)**

`sudo dnf install autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev git` 

+ **Go to your preferred directory/folder and clone the entire riscv toolchain repository**

`git clone --recursive https://github.com/riscv/riscv-gnu-toolchain`

OR
If you want an easier name to remember

`git clone --recursive https://github.com/riscv/riscv-gnu-toolchain alternative_name`

+ **Go into the cloned directory**

`cd riscv-gnu-toolchain`

OR

`cd alternative_name`

+ **Set up installation directory**

`./configure --prefix=/opt/riscv --enable-multilib`

OR

`./configure --prefix=/your/preferred/directory ----enable-multilib`

+ **Install**

`make`

**DO NOT LET `make` GET INTERUPPTED BY YOUR SYSTEM SUSPENDING AFTER INACTIVITY. Turn autosuspend after inactivity setting off if possible. This step will take about 1 hr to 1 hr 30 min.**

+ **Update path**
   
Execute this step AFTER the `make` has finished executing.

`echo 'export PATH=$PATH:/opt/riscv/bin' >> ~/.bashrc;source ~/.bashrc`

OR

`echo 'export PATH=$PATH:/your/preferred/directory' >> ~/.bashrc;source ~/.bashrc`

+ **Check if successful**

`riscv64-unknown-elf-gcc --version`

If you got the below output, You have installed the riscv-toolchain successfully.

```
riscv64-unknown-elf-gcc (g2ee5e430018) 12.2.0
Copyright (C) 2022 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```
</details>

<details>
<summary>Installing spike risc-v isa simulator</summary>

+ **Clone the reposistory in your preferred directory.**
 
`git clone https://github.com/riscv-software-src/riscv-isa-sim.git`

+ **Go into the cloned directory and create build directory**

`cd riscv-isa-sim;mkdir build;cd build`

+ **Configure**

`../configure --prefix=/preffered/directory`

+ **Make and install**

`make`

`[sudo] make install`

+ **Add binaries to path**

`echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.bashrc`
`source ~/.bashrc`

OR if you are using zsh 

`echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.zshrc`
`source ~/.zshrc`

</details>

<details>
   <summary>Install pk (proton-kernel)</summary>
   
+ **Clone the risv-pk repository in your preffered directory**

`git clone https://github.com/riscv-software-src/riscv-pk.git`

+ **Change to previous commit of master branch**

`cd riscv-pk`

`git checkout 54de960a5e4c91734fcfd454fdc7e593c6ac571d`

+ **Make build directory**

`mkdir build;cd build`

+ **Configure and install**

```
 ../configure --prefix=/preffered/directory/ --host=riscv64-unknown-elf
make -j8 # because i have 8 core CPU
[sudo] make install
```
+ **Add binaries to path**

`echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.bashrc`
`source ~/.bashrc`

OR if you are using zsh 

`echo 'export PATH=$PATH:/preffered/directory/bin' >> ~/.zshrc`
`source ~/.zshrc`
</details>

<details>
<summary>Install iverilog</summary>

   
+ **Install dependencies**
   
 `sudo dnf install autoconf flex gcc bison g++`

+ **Clone the iverilog repository in your preffered directory**

`git clone https://github.com/steveicarus/iverilog.git`

+ **Configure and install**

```
cd iverilog
sh autoconf.sh
./configure
sudo su
make install
sudo dnf install iverilog
```
</details>
<details>
<summary>Installing yosys</summary>

+ **Installing prerequisites**
  
```
sudo dnf install @development-tools
sudo dnf install readline-devel bison bison-devel flex flex-devel \
libffi-devel mercurial git clang gcc gcc-c++ \
python3 tcl-devel graphviz-devel graphviz-tcl \
gawk python-xdot iverilog 
```

+ **Clone the yosys repository**

`git clone https://github.com/YosysHQ/yosys.git;cd yosys`

+ **Build from source and install**
```
make
sudo make install
```
</details>

# Labwork results

<details> 
<summary>Day 1</summary> 
   
## Introduction to RISC-V ISA and GNU compiler toolchain
<details>
   <summary>Compiling using C program of sum of n numbers using riscv-toolchain</summary>

+ **C program**

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
 + **Compilation and execution results**

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/1d4df3f6-e2f7-4168-b143-e04b170e7628)

+ **Generating Assembly code**

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/336898dd-b297-47a0-a225-a0c71656c449)

In the vim editor,type `/<main>` and press ENTER and press n untill you find the below code block

+ **Using compile flacg `-O1`**

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d63ea4e0-0fa6-489b-99d7-e8112daa36ee)

+ **Using compile flag `-Ofast`**

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/843fdca0-f134-4fd7-9dad-d9899aed9ead)
</details>

<details>
   <summary>Spike simulation and Debug</summary>

`spike -d pk sum1ton.o` Where the `-d` flag is for debug

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/c5208401-5927-4778-8be7-171641edfb9d)

![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/e7bbcc0c-9019-4e08-9d3f-80d9d85d43c9)
</details>

<details>
   <summary>Lab for signed and unsigned numbers</summary>


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
</details>
<details>
<summary>Day 2</summary> 
   
## Labwork using ABI function calls

+ **C-program on RISC-V CPU**
   - **C code**
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
   
   - **Assembly code**
   
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
   
   - **Execution results**
   ![image](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/622b8f1a-171a-4dcd-ab49-22272ec7f092)
   
   
   
   ![Screenshot from 2023-08-21 21-29-23](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/6a887f0f-b4df-4394-a9c4-3cdd4c22e856)
   
   - **firmware.hex**
   
   ![Screenshot from 2023-08-21 21-29-10](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/716e7c9a-2ba2-402b-9a24-09eca5ac5082)
</details>

<details> 
<summary>DAY 3</summary>
   
## Introduction to verilog RTL design and synthesis

<details>
   <summary>Labs using iverilog and gtkwave</summary>

![Screenshot from 2023-08-27 18-28-23](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/4319b243-3941-403d-b7a7-15ef5269077b)

![GTKwave](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d4671b11-34c5-4625-b2ea-c78d69454733)
</details>
<details>
   <summary>Labs using yosys and Sky130 PDKs</summary>

![Screenshot from 2023-08-28 17-39-29](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/85632bba-fe14-49fe-bb9f-65ad52e32262)

+ Netlist generated after running `synth -top good_mux`

![Screenshot from 2023-08-28 17-40-12](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/9a797703-7d3b-479f-b9c4-78d8f6cd275b)

+ After running `abc -liberty sky130_fd_sc_hd__tt_025C_1v80.lib` for mapping synthesis to lower gate-level representation

![Screenshot from 2023-08-28 17-44-19](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/4615a940-4c19-4506-9032-f7bdffc0140e)

+ Write netlist file using `write_verilog good_mux_netlist.v`

![Screenshot from 2023-08-28 17-45-52](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/049d7e7d-1b81-4f8e-be14-db2488ef0684)

![Screenshot from 2023-08-28 17-47-57](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/6a228ee0-531f-4744-8807-20f6d8056f21)

+ Write simplified netlist file using `write_verilog -noattr good_mux_netlist.v` 

![Screenshot from 2023-08-28 17-48-38](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/42b343fc-be7c-4433-87e4-d41e80d79e45)

![Screenshot from 2023-08-28 17-49-17](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/b3b17618-4693-4256-ae3b-e0afdb155e96)
</details>
</details>

<details> 
<summary>Day 4</summary>

## Timing libs, hierarchical vs flat synthesis and efficient flop coding styles

<details>
   <summary>
    Hierarchical vs Flat synthesis  
   </summary>

+ Read the multiple_modules verilog file

![Screenshot from 2023-08-28 18-38-42](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/0092bef8-786a-4fab-935a-5b7be71555d4)

+ Synthesis of top module

![Screenshot from 2023-08-28 18-48-21](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d1a29383-bb1a-441c-a932-0ad2ec8a4b87)
![Screenshot from 2023-08-28 18-39-13](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/bb950f2a-50dd-4e4d-b4f9-209197935f1d)

+ Block diagram of heirarchical synthesis

![Screenshot from 2023-08-28 18-51-11](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/c015f49e-19d4-49ba-a252-90a7cdc99eef)

+ Block level diagram of flat synthesis

![Screenshot from 2023-08-28 19-06-09](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/7487f8d9-31e5-4576-94b8-d124be89d801)
</details>

<details>
   <summary>
      Flop synthesis and simulations
   </summary>

<details>
<summary>
   Simulations
</summary>
 
+ DFF with asynchronous reset
![async_reset_terminal](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/81a4b1be-6bb8-4881-a7cc-3cbd4d565727)
![async_reset](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/b0ccb276-eb7d-475f-8805-9eb09f8a961a)
+ DFF with synchronous reset
![sync_reset_terminal](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d0ada2a2-d84f-475c-81f8-fd796536e092)
![sync_reset](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/66af4b77-e626-4ff8-a387-8bc3d371a1d1)
+ DFF with asynchronous set
![async_set_terminal](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/20406b0a-e6bd-4876-bf11-b7f1662be9ab)
![async_set](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/1983f716-288e-4b2a-996e-601cabafd01a)
</details>

<details>
   <summary>
      Synthesis
   </summary>

 
+ DFF with asynchronous reset
   
![async_reset_syn](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/b3a1d5bf-c2d4-406e-a495-01caf17885f9)
![async_reset_block](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/8d676f0e-6d62-4995-8901-ceef6abf07bd)
        
+ DFF with synchronous reset
   
![Screenshot from 2023-08-29 16-18-13](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/b88a1ed9-059d-4d2a-aa7d-8b4a293ff46e)
![sync_reset_block](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/5f1cd3f0-81df-4847-95ca-2bd7cf67a77a)

+ DFF with asynchronous set
 
![async_set_syn](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/5c36b1e3-9e5a-4c0b-945e-baded948f85d)
![async_set_block](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/8eaaaafd-9c64-4d45-bdac-271c8042e35f)
</details>
</details>
</details>

<details>
<summary>Day 5</summary>
   
## Combinational and sequential Optimizations
<details>
   <summary>Combinational optimizations</summary>
<details>
<summary>Opt check 1</summary>
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
read_verilog opt_check.v
synth -top opt_check
opt_clean -purge
abc -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```
   ![opt1_syn](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/e6b9045b-acfa-44f3-bf9d-9c52c41731a2)
   ![opt1_block](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/892adb85-7cee-4dad-9011-6e5f4391284a)
</details>      
<details>
<summary>Opt check 2</summary>
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
read_verilog opt_check2.v
synth -top opt_check2
opt_clean -purge
abc -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```
![opt2_syn](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/8254cd8c-c4b2-499c-930c-ada6d69729cf)
![opt2_block](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/498e0ad0-fe04-43bc-8d92-eb1bfd56c648)
</details>
<details>
<summary>Opt check 3</summary>
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
read_verilog opt_check3.v
synth -top opt_check3
opt_clean -purge
abc -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```
![opt3_syn](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/c3721bce-37a4-46f4-9b67-8a1cfbe20604)
![opt3_block](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d83a7340-90bf-4101-a25e-b4b2df72e527)
</details>
<details>
<summary>Opt check 4</summary>
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
read_verilog opt_check4.v
synth -top opt_check4
opt_clean -purge
abc -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```
![opt4_syn](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/90ad63c2-dbf7-41d2-a74b-522522b4f0b9)
![opt4_block](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/1ba7c967-7957-4470-9a39-4b42d3c17469)
</details>
<details>
<summary>Multi module opt</summary>
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
read_verilog multiple_module_opt.v
synth -top multiple_module_opt
flatten
opt_clean -purge
abc -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```
![multi_syn1](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/300f7b12-2fac-4206-80da-b0c460e658c9)
![multi_syn2](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/4e9d196f-0f0f-40ce-befa-36c41352a17a)
![multi_block](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/cd867292-c6bd-46ab-8d48-d732c09c32c7)
</details>
</details>
<details>
   <summary>
      Sequential optimizations
   </summary>
<details>
<summary>dff_const1</summary>

+ Simulation
```
iverilog dff_const1.v tb_dff_const1.v
./a.out
gtkwave tb_dff_const1.vcd
```
![Screenshot from 2023-08-30 09-05-12](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/1e2ee19e-8b7e-4d00-953e-2423cb118982)

+ Synthesis
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog dff_const1.v
synth -top dff_const1
dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```

![Screenshot from 2023-08-30 09-06-43](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/0f91d4c7-212d-4c11-b429-4164f774b983)
![Screenshot from 2023-08-30 09-07-37](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/0d895983-43f8-45b4-9ff4-6dd03481ffd2)

</details>
<details>
   <summary>dff_const2</summary>

+ Simulation
```
iverilog dff_const2.v tb_dff_const2.v
./a.out
gtkwave tb_dff_const3.vcd
```
![Screenshot from 2023-08-30 09-19-00](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d072e8f9-51c7-436e-91b3-60a332b17f9e)

+ Synthesis
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog dff_const2.v
synth -top dff_const2
dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```
![Screenshot from 2023-08-30 09-20-08](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/408708f3-1f8b-481d-9f1d-e60d1c562a31)
![Screenshot from 2023-08-30 09-20-19](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/b5045356-389a-4061-9b40-86414741f433)

</details>
<details>
   <summary>dff_const3</summary>

+ Simulation
```
iverilog dff_const3.v tb_dff_const3.v
./a.out
gtkwave tb_dff_const3.vcd
```
![Screenshot from 2023-08-30 09-24-14](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/6ffb9c85-1fd7-4dde-be09-9d5bed847ebe)


+ Synthesis
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog dff_const3.v
synth -top dff_const3
dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```

![Screenshot from 2023-08-30 09-24-49](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/c5358772-c977-42b5-9c22-779b286ff14f)
![Screenshot from 2023-08-30 09-25-17](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/f667f478-0d2c-4255-b5f9-8751a038569a)

</details>
<details>
   <summary>dff_const4</summary>

+ Simulation
```
iverilog dff_const4.v tb_dff_const4.v
./a.out
gtkwave tb_dff_const4.vcd
```

![Screenshot from 2023-08-30 09-52-43](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/58e50e53-a935-4f49-9dfa-66c95261ccaa)


+ Synthesis
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog dff_const4.v
synth -top dff_const4
dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```
![Screenshot from 2023-08-30 09-53-53](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/29a0f2f2-7c0d-4b03-8b8a-2135fadca413)
![Screenshot from 2023-08-30 09-53-36](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/32016718-ebc3-4e1e-bee3-8ee587da2304)


   
</details>
<details>
<summary>dff_const5</summary>

+ Simulation
```
iverilog dff_const5.v tb_dff_const5.v
./a.out
gtkwave tb_dff_const5.vcd
```

![Screenshot from 2023-08-30 09-55-46](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/2381f6ca-27ee-4107-97d5-6175d51e1e8e)


+ Synthesis
```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog dff_const5.v
synth -top dff_const5
dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```

![Screenshot from 2023-08-30 09-56-26](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/3ad5f2b4-9a76-49b7-a1db-cff28999d9d7)
![Screenshot from 2023-08-30 09-56-11](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/df96c3ee-926d-49ae-ae59-56ff512e7c99)

</details>
</details>
<details>
<summary>
Sequenctial optimizations for unused outputs
</summary>

<details>
<summary>counter_opt</summary>

```
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog counter_opt.v
synth -top counter_opt
dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```

![Screenshot from 2023-08-30 09-59-26](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/0e77158b-6439-4876-b5d4-fd323a498f2a)
![Screenshot from 2023-08-30 09-59-45](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d0800ce8-59e1-4e0d-ba76-4d0908a6dfb8)

</details>

<details>
<summary>counter_opt2</summary>

```
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog counter_opt2.v
synth -top counter_opt
dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```

![Screenshot from 2023-08-30 10-02-00](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/541ba50f-2e8a-45ea-abb4-9a4e82dcc2bc)
![Screenshot from 2023-08-30 10-03-17](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/36181661-8322-433f-a4c7-72fef178e8aa)

</details>
</details>
</details>
<details>
<summary>Day 6</summary>   

# GLS and synthesis-simulation mismatch
<details>
<summary>ternary_operator_mux</summary>

**Simulation**

```
iverilog ternary_operator_mux.v tb_ternary_operator_mux.v
./a.out
gtkwave tb_ternary_operator_mux.vcd
```
![Screenshot from 2023-09-02 10-21-46](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/a59cea8c-7862-400d-86ba-aef5a79454fb)
![Screenshot from 2023-09-02 10-22-01](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/ca5d6867-4393-49c2-999b-295b469d4f57)

**Synthesis**

```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog ternary_operator_mux.v
synth -top ternary_operator_mux
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```

![Screenshot from 2023-09-02 10-23-20](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/002dfda2-a3da-4e90-9e52-a496cfee1873)
![Screenshot from 2023-09-02 10-23-49](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/e0a926ae-6721-4fed-8ab3-0dd07e3c06a7)

**Gate-Level-Synthesis**

```
iverilog ../my_lib/verilog_model/primitives.v ../my_lib/verilog_model/sky130_fd_sc_hd.v ternary_operator_mux_net.v tb_ternary_operator_mux.v
./a.out
gtkwave tb_bad_mux.vcd
```

![Screenshot from 2023-09-02 10-26-16](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/f460a901-d7cc-425e-8969-8b4f279894de)
![Screenshot from 2023-09-02 10-26-05](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/cd86b42f-17cc-4658-97d6-2886cef8cb86)

</details>  

<details>
<summary>bad_mux</summary>

**Simulation**

```
iverilog bad_mux.v tb_bad_mux.v
./a.out
gtkwave tb_bad_mux.vcd
```

![Screenshot from 2023-09-02 10-27-32](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/0f71b4b7-fe84-42fc-9b21-3f5ba977cb07)
![Screenshot from 2023-09-02 10-27-51](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/16fd85c8-7dc9-487d-a61f-b6d0ff2b2fc5)

**Synthesis**

```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog bad_mux.v
synth -top bad_mux
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```

![Screenshot from 2023-09-02 10-30-15](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/44feb68f-93fd-4c4b-a109-65f5496a3d0e)
![Screenshot from 2023-09-02 10-30-43](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/4e96180e-4350-4cc8-b5d7-dd83cf4d69ff)

**Gate-Level-Synthesis**

```
iverilog ../my_lib/verilog_model/primitives.v ../my_lib/verilog_model/sky130_fd_sc_hd.v bad_mux_net.v tb_bad_mux.v
./a.out
gtkwave tb_bad_mux.vcd
```

![Screenshot from 2023-09-02 10-32-30](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/d799d235-1dc5-4be7-beb9-82ea42e632d5)
![Screenshot from 2023-09-02 10-32-55](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/acfa4f00-848e-4991-9fe5-a2597a64140a)
</details>

# Synth-Sim Mismatch for Blocking Statement

<details>
<summary>blocking_caveat</summary>

 **Simulation**

```
iverilog blocking_caveat.v tb_blocking_caveat.v
./a.out
gtkwave tb_blocking_caveat.vcd
```

![Screenshot from 2023-09-02 10-37-07](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/f9076d0a-3f0f-48b1-bbff-2718c526b7f6)
![Screenshot from 2023-09-02 10-37-22](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/ecaecd1f-5e3f-4c1e-ad99-95f5ae0cb4e5)

 **Synthesis**

```
yosys
read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog blocking_caveat.v
synth -top blocking_caveat
abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib
show
```

![Screenshot from 2023-09-02 10-39-23](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/dc173649-0105-43e5-8f31-024100d024c1)
![Screenshot from 2023-09-02 10-39-48](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/1ad774d1-0257-4f78-87d1-74155b60b810)

 **Gate-Level-Simulation**

```
iverilog ../my_lib/verilog_model/primitives.v ../my_lib/verilog_model/sky130_fd_sc_hd.v blocking_caveat_net.v tb_blocking_caveat.v
./a.out
gtkwave tb_blocking_caveat.vcd
```

![Screenshot from 2023-09-02 10-40-35](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/536489c8-466e-4b0b-af9b-4c4fe1fe78e4)
![Screenshot from 2023-09-02 10-40-54](https://github.com/SR-Rishab/pes_asic_class/assets/107171044/f0b077df-5a21-4d35-9555-16862f22175b)

</details> 
</details>
