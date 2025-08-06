cd /opt
ROOT_BIN=root_v6.36.02.Linux-almalinux9.6-x86_64-gcc11.5.tar.gz
curl -O https://root.cern/download/${ROOT_BIN}
tar -xzvf ${ROOT_BIN}
rm -f ${ROOT_BIN}
echo /opt/root/lib >> /etc/ld.so.conf
ldconfig


