#!/bin/bash
echo part 1: downloading Joern start
echo building joern
sudo yum install ant gcc
wget https://github.com/fabsx00/joern/archive/0.3.1.tar.gz >> downloadReport.txt
tar xfzv 0.3.1.tar.gz >> downloadReport.txt
cd joern-0.3.1 >> downloadReport.txt
wget http://mlsec.org/joern/lib/lib.tar.gz >> downloadReport.txt
tar xfzv lib.tar.gz >> downloadReport.txt
#ant >> downloadReport.txt
ant
# ~/.bashrc
alias joern='java -jar $JOERN/bin/joern.jar' 
#ant tools >> downloadReport.txt
ant tools
sudo yum install python27
sudo yum install python-setuptools python-devel
sudo yum install python27-devel python27-setuptools
#sudo yum install python-devel.x86_64
wget https://files.pythonhosted.org/packages/d0/5b/ce38fbd03cd645ab4f121e7df70964a8baeab5cbbabf22e9ed8abfa1aa17/py2neo-2.0.9.tar.gz >> downloadReport.txt
#wget https://pypi.python.org/packages/d0/5b/ce38fbd03cd645ab4f121e7df70964a8baeab5cbbabf22e9ed8abfa1aa17/py2neo-2.0.9.tar.gz >> downloadReport.txt
tar xfzv py2neo-2.0.9.tar.gz >> downloadReport.txt
cd py2neo-2.0.9
sudo python27 setup.py install >> downloadReport.txt
#wget https://github.com/fabsx00/python-joern/archive/0.3.1.tar.gz
#tar xfzv 0.3.1.tar.gz
#cd python-joern-0.3.1
git clone https://github.com/EdgeDauDrex/python-joern.git >> downloadReport.txt
cd python-joern
sudo python27 setup.py install >> downloadReport.txt
echo part 1: downloading joern done
