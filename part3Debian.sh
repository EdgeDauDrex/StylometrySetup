#!/bin/bash
echo Git downloads start
echo downloading sorce code stylometry stuff from github fork of aylines stuff
git clone https://github.com/EdgeDauDrex/CodeStylometry.git
echo downloading gremlin plugin
git clone https://github.com/EdgeDauDrex/CodeStylometry-missing-joern-tools-files.git
mv CodeStylometry-missing-joern-tools-files/plugins/neo4j-gremlin-plugin-2.1-SNAPSHOT.jar /usr/share/neo4j/plugins/neo4j-gremlin-plugin-2.1-SNAPSHOT.jar
mv CodeStylometry-missing-joern-tools-files/plugins/gremlin-plugin /usr/share/neo4j/plugins
echo Git downloads end
