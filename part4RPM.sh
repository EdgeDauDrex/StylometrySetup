#!/bin/bash
echo Aviel93
echo Aviel93
echo Aviel93
echo Aviel93
echo Aviel93
echo Aviel93
echo starting to install joern tools
sudo yum install graphviz graphviz-devel pkgconfig
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
