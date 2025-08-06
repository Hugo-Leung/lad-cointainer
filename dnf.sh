dnf update -y 
dnf install -y 'dnf-command(config-manager)'
dnf config-manager --set-enabled crb
dnf install -y \
	https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm 

dnf group install -y "Development Tools"
dnf install -y $(cat /packages)

dnf clean all


