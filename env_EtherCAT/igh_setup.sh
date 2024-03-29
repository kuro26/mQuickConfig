# make sure the exist of kernel3.16
cd EtherCAT-igh
xz -d linux-3.16.74.tar.xz
tar xvf linux-3.16.74.tar

# if RTDM such as Xenomai or RTAI is about to installed




# but now we choose no RTDM, the simplified way
make clean
make mrproper
make distclean
make menuconfig       # config the kernel option!
make bzImage
make modules
make modules_install
make install

# install ncurses which is used in menuconfig
wget http://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz
tar -zxvf ncurses-5.9.tar.gz
cd ncurses-5.9
./configure
apt-get install g++
make && make install


make menuconfig
