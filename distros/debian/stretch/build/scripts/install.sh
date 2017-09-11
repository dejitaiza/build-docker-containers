#!/bin/sh
set -e

if test -n "${HTTP_PROXY}"; then
    echo "proxy=${HTTP_PROXY}" >> /etc/yum.conf
fi

echo "proxy=${HTTP_PROXY}"

apt-get update
apt-get install -y tar curl bzip2 zlib1g-dev automake autoconf python-argparse build-essential \
    apt-utils apt-transport-https debhelper libjemalloc-dev libssl-dev python python-pip \
    libldap2-dev gcc-6 git cmake systemd pkg-config

pip install lockfile

useradd jenkins -u 1000

echo 'PATH=/opt/arangodb/bin/:${PATH}' >> /etc/bashrc
echo 'PATH=/opt/arangodb/bin/:${PATH}' >> /etc/profile
