# install nodejs
cd ~
wget https://nodejs.org/dist/v10.16.3/node-v10.16.3-linux-x64.tar.xz
xz node-v10.16.3-linux-x64.tar.xz
tar xvf node-v10.16.3-linux-x64.tar
mv node-v10.16.3-linux-x64 nodejs-10.16.3
cp ~/.bashrc ~/.bashrc.bak
echo "export PATH=\$PATH:\$HOME/nodejs-10.16.3/bin" >> .bashrc


# using npm to start a react project!
