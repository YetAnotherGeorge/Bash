#!/bin/bash
#: Title        : setupNGINXrtmp.sh
#: Date         : 2022-02-03
#: Author       : YetAnotherGeorge
#: Version      : 1.0 
#: Options      : 
#: Description  : 
#: Description  : 

cd ~

#install required packages for compiling
sudo apt-get install -y build-essential libpcre3 libpcre3-dev libssl-dev
sudo apt-get install -y zlib1g-dev

#get nginx and the rtmp module code files
wget http://nginx.org/download/nginx-1.15.1.tar.gz
wget https://github.com/sergey-dryabzhinsky/nginx-rtmp-module/archive/dev.zip
printf "Downloaded nginx and rtmp module.\n"

#bulid
tar -zxvf nginx-1.15.1.tar.gz
unzip dev.zip
cd nginx-1.15.1

./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-dev
make
sudo make install

printf "Adding rtmp config to file\n"
sudo cat >> "/usr/local/nginx/conf/nginx.conf" <<- EOM

rtmp {
    server {
        listen 1935;
        chunk_size 4096;

        application live {
            live on;
            record off;
        }
    }
}
EOM