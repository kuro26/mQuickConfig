# 1. download xenomai, site: https://xenomai.org/archive/
cd ~
mkdir xenomai-igh && cd xenomai-igh
git clone git://archive.xenomai.org/xenomai-2.6.git

# 2. download ipip, realtime patch for kernel, site:https://xenomai.org/downloads/ipipe/v4.x/x86/
# this might be useless, for we usually use the one in  xenomai
wget https://xenomai.org/downloads/ipipe/v4.x/x86/ipipe-core-4.4.188-cip36-x86-17.patch

# 3. download linux kernel, site :http://cdn.kernel.org/pub/linux/kernel/v4.x/
# wget http://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.4.188.tar.gz
# tar -zxvf linux-4.4.188.tar.gz
# for i-pipe version in Etherlab-Matser
wget http://cdn.kernel.org/pub/linux/kernel/v3.x/linux-3.14.44.tar.xz
# wget http://cdn.kernel.org/pub/linux/kernel/v3.x/linux-3.18.20.tar.xz
xz -d linux-3.14.44.tar.xz
tar xvf linux-3.14.44.tar

# 4. download the igh-master
# official site: http://www.etherlab.org/en/ethercat/
sudo apt-get install mercurial           # hg version control tools
# download the latest version
# hg clone http://hg.code.sf.net/p/etherlabmaster/code ethercat-hg
hg clone http://hg.code.sf.net/p/etherlabmaster/code etherlabmaster-code

# 5. patches linux with ipipe in xenomai
../xenomai-igh/xenomai-2.6/scripts/prepare-kernel.sh --arch=amd64 --linux=.   --adeos=../xenomai-igh/xenomai-2.6/ksrc/arch/x86/patches/ipipe-core-3.14.44-x86-12.patch
