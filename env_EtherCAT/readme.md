record the step for igh-xenomai env setup:
### 1 Download the required file:
1. download xenomai repository using git
   version 3 is new core using cobalt, we use 2.x
2. check the ipipe verson in xenomai
   can also download some other version
3. download linux kernel
4. download igh-master using hg(mercurial)

### 2 Patch the linux with xenomai and build
1. patch linux with prepare-kernel.sh in xenomai
2. make menuconfig, to config the linux
   or just copy the configed file
   remember to copy the well configed one!
3. buid the kernel: make bzImage
4. make the core modules: make modules
5. install modules: make install_modules
6. install core and update grub: make install

### 3 install igh
