#!/bin/bash
echo starting to install joern tools
sudo yum install graphviz libgraphviz-devel python-pygraphviz
git clone https://github.com/fabsx00/joern-tools
cd joern-tools
sudo python2 setup.py install
echo veryify correct install by :
joern-lookup
echo ending joern tools install
