#!/bin/bash
echo part 2: installing neo4j start
echo downloading neo4j
wget -O - https://debian.neo4j.org/neotechnology.gpg.key | sudo apt-key add -
echo 'deb http://debian.neo4j.org/repo stable/' | sudo tee -a /etc/apt/sources.list.d/neo4j.list
sudo apt-get update
sudo apt-get install neo4j=2.1.5
echo part 2: installing neo4j end
