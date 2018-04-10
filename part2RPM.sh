#!/bin/bash
echo part 2: installing neo4j start
echo downloading neo4j
#sudo rpm --import http://debian.neo4j.org/neotechnology.gpg.key
#sudo bash -c 'cat <<EOF>  /etc/yum.repos.d/neo4j.repo
#[neo4j]
#name=Neo4j RPM Repository
#baseurl=http://yum.neo4j.org/stable
#enabled=1
#gpgcheck=1
#EOF'
#sudo yum install neo4j-2.1.5
wget https://neo4j.com/artifact.php?name=neo4j-community-2.1.5-unix.tar.gz
tar artifact.php?name=neo4j-community-2.1.5-unix.tar.gz
echo part 2: installing neo4j end
