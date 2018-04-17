#!/bin/bash
echo Git downloads start
echo downloading source-code stylometry project
git clone https://github.com/EdgeDauDrex/CodeStylometry.git >> downloadReport.txt
echo downloading gremlin plugin
git clone https://github.com/EdgeDauDrex/CodeStylometry-missing-joern-tools-files.git >> downloadReport.txt
mv CodeStylometry-missing-joern-tools-files/plugins/neo4j-gremlin-plugin-2.1-SNAPSHOT.jar neo4j-community-2.1.5/plugins/neo4j-gremlin-plugin-2.1-SNAPSHOT.jar
mv CodeStylometry-missing-joern-tools-files/plugins/gremlin-plugin neo4j-community-2.1.5/plugins 
echo Git downloads end
