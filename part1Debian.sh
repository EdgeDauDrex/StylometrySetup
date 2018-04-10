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
sudo apt-get install python-setuptools python-dev
wget https://pypi.python.org/packages/d0/5b/ce38fbd03cd645ab4f121e7df70964a8baeab5cbbabf22e9ed8abfa1aa17/py2neo-2.0.9.tar.gz
tar xfzv py2neo-2.0.9.tar.gz
cd py2neo-2.0.9
sudo python2 setup.py install
wget https://github.com/fabsx00/python-joern/archive/0.3.1.tar.gz
tar xfzv 0.3.1.tar.gz
cd python-joern-0.3.1
sudo python2 setup.py install
echo part 1: downloading joern done
