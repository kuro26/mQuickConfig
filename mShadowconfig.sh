# install shadowsocks with python pip
pip install shadowsocks
# add configuration
cd ~
rm -rf mss
mkdir mss && cd mss
touch shadowsock.json

# add configuration file here
echo " 
{
	\"server\":\"0.0.0.0",
	\"server_port\":9527,
	\"local_address\":\"127.0.0.1\",
	\"local_port\":1080,
	\"password\":\"Ren1Miao2Miao3\",
	\"timeout\":300,
	\"method\":\"aes-256-cfb\",
	\"fast_open\":false,
	\"workers\":1
}" > shadowsock.json

ssserver -c shadowsock.json --log-file shadowsock.log -d start


