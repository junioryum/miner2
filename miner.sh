#!/bin/bash

 apt-get install libcurl4-openssl-dev git build-essential libssl-dev
 apt-get install autotools-dev autoconf libcurl3 libcurl4-gnutls-dev
 
 git clone https://github.com/tsiv/ccminer-cryptonight
 cd ccminer-cryptonight/
./autogen.sh
 ./configure
 make
 make install
cd ccminer-cryptonight/
ccminer -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u junior_yum@hotmail.com -p x


