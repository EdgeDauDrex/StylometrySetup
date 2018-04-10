#!/bin/bash
echo part 1: downloading Joern start
echo building joern
wget https://github.com/fabsx00/joern/archive/0.3.1.tar.gz
tar xfzv 0.3.1.tar.gz
cd joern-0.3.1
wget http://mlsec.org/joern/lib/lib.tar.gz
tar xfzv lib.tar.gz
ant
# ~/.bashrc
alias joern='java -jar $JOERN/bin/joern.jar'
ant tools
sudo yum install python-setuptools python-dev
wget https://github.com/fabsx00/python-joern/archive/0.3.1.tar.gz
tar xfzv 0.3.1.tar.gz
cd python-joern-0.3.1
sudo python2 setup.py install
echo part 1: downloading joern done
