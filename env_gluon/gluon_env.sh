# ------------------------------------------------------
# site: zh.gluon.ai
# with the video Limu
# ------------------------------------------------------
cd ~
mkdir gluon && cd gluon
# download the examples
wget https://zh.d2l.ai/d2l-zh-1.0.zip
apt-get install unzip
mkdir tutorial
unzip d2l-zh-1.0.zip -d tutorial
cd tutorial
conda env create -f environment.yml

