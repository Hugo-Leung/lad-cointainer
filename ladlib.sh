#!/bin/bash
cd /opt

if  [[ -z "$ROOTSYS" ]]; then
	source /opt/root/bin/thisroot.sh
fi

export PATH=/opt/hcana/bin:$PATH
export LD_LIBRARY_PATH=/opt/hcana/lib64:$LD_LIBRARY_PATH

git clone --depth=1 https://github.com/Hugo-Leung/LADlib.git LADlib-src
cd LADlib-src
mkdir build 

njobs=5
ncpu=$(nproc)
if [[ ${ncpu} -lt ${njobs} ]]; then
	njobs=${cpu}
fi

cmake -B build -S . -DCMAKE_INSTALL_PREFIX=/opt/LADlib
cmake --build build -j${njobs}
cmake --install build

echo /opt/LADlib/lib64 >> /etc/ld.so.conf
ldconfig

