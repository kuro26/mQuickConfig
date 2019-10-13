# julia language
cd ~
wget https://julialang-s3.julialang.org/bin/linux/x64/1.2/julia-1.2.0-linux-x86_64.tar.gz
tar -zxvf julia-1.2.0-linux-x86_64.tar.gz
rm julia-1.2.0-linux-x86_64.tar.gz
# should be better way exist, we can check if the path exist
echo "export PATH=\$PATH:\$HOME/julia-1.2.0/bin" >> .bashrc
