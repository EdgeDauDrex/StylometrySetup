#!/bin/bash
echo starting to install joern tools
sudo yum -y install epel-release
sudo yum repolist
sudo yum install dpkg-devel dpkg-dev
sudo yum install pkgconfig graphviz graphviz-devel 
echo installing pygraphviz
wget https://pypi.python.org/packages/25/b1/e44c51b47054ad88aadbe9edcf344bf9b3c61d2d6d15719180ee4d130bcd/pygraphviz-1.4rc1.tar.gz
tar xfzv pygraphviz-1.4rc1.tar.gz
cd pygraphviz-1.4rc1
sudo python27 setup.py install
echo pygraphviz installed
git clone https://github.com/fabsx00/joern-tools
cd joern-tools
sudo python27 setup.py install
echo verify correct install by :
joern-lookup
echo ending joern tools install
