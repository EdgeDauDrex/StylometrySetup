#!/bin/bash
echo Aviel93
echo Aviel93
echo Aviel93
echo Aviel93
echo Aviel93
echo Aviel93
echo starting to install joern tools
#sudo yum -y install epel-release
#sudo yum repolist
#sudo yum install dpkg dpkg-devel dpkg-dev
#sudo yum install gcc
sudo yum install pkgconfig graphviz graphviz-devel graphviz-devel.x86_64 libgraphviz libgraphviz-devel >> downloadReport.txt
echo installing pygraphviz
#wget https://pypi.python.org/packages/25/b1/e44c51b47054ad88aadbe9edcf344bf9b3c61d2d6d15719180ee4d130bcd/pygraphviz-1.4rc1.tar.gz >> downloadReport.txt
#tar xfzv pygraphviz-1.4rc1.tar.gz >> downloadReport.txt
git clone https://github.com/EdgeDauDrex/pygraphviz.git
cd pygraphviz
#sudo python27 setup.py install --library-path=/usr/lib64/graphviz >> downloadReport.txt
sudo python27 setup.py install
echo pygraphviz installed
git clone https://github.com/fabsx00/joern-tools.git >> downloadReport.txt
cd joern-tools
sudo python27 setup.py install >> downloadReport.txt
echo verify correct install by :
joern-lookup
echo ending joern tools install
