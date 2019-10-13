# download and 
cd ~
wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
tar -zxvf go1.13.linux-amd64.tar.gz
rm go1.13.linux-amd64.tar.gz

# add path
echo "export GOROOT=\$HOME/go" >> .bashrc
echo "export GOPATH=\$HOME/gopath" >> .bashrc
echo "export PATH=\$PATH:\$GOROOT/bin:\$GOPATH/bin" >> .bashrc
source ~/.bashrc



