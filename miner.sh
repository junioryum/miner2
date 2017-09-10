#!/bin/bash

#!/bin/bash

sudo apt-get install cmake build-essential libboost-all-dev
git clone -b Linux https://github.com/nicehash/nheqminer/releases
cd nheqminer/cpu_xenoncat/Linux/asm/
sh assemble.sh
cd ../../../Linux_cmake/nheqminer_cpu
cmake .
make -j $(nproc)
./nheqminer_cpu -b
./nheqminer -l zec.pool.minergate.com:3357 -u junior_yum@hotmail.com
