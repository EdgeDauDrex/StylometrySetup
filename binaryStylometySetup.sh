#!/bin/bash
git clone https://github.com/Kitware/CMake.git
cd CMake
./bootstrap
make
make install
cd ..
git clone https://github.com/radare/radare2.git
cd radare2
sys/install.sh
cd ..
git clone https://github.com/calaylin/bda.git
wget https://services.gradle.org/distributions/gradle-4.8.1-bin.zip?_ga=2.77067735.335273354.1529975705-1487338249.1529975705
sudo mkdir /opt/gradle
unzip -d /opt/gradle gradle-4.8.1-bin.zip
export PATH=$PATH:/opt/gradle/gradle-4.8.1/bin
wget http://orientdb.com/download.php?email=unknown@unknown.com&file=orientdb-community-2.1.5.tar.gz
git clone -b llvm-4.0 https://github.com/obfuscator-llvm/obfuscator.git
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ../obfuscator/
make -j7
cd ..
tar xfzv orientdb-community-2.1.5.tar.gz
git clone https://github.com/fabsx00/bjoern
cd bjoern
gradle deploy
git clone https://github.com/a0x77n/bjoern-shell
cd bjoern-shell
python3 setup.py install
bjosh
