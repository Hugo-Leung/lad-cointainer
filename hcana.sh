#!/bin/bash
cd /opt

if  [[ -z "$ROOTSYS" ]]; then
	source /opt/root/bin/thisroot.sh
fi

git clone --depth=1  --branch develop https://github.com/Hugo-Leung/hcana.git hcana-src

cd hcana-src
git submodule init
git submodule update --depth=1

njobs=5
ncpu=$(nproc)
if [[ ${ncpu} -lt ${njobs} ]]; then
	njobs=${cpu}
fi
source ./setup.sh
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/hcana ..
make -j${njobs} install


echo /opt/hcana/lib64 >> /etc/ld.so.conf
ldconfig
