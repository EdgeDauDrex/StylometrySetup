# StylometrySetup
Step-by-step instructions to setup the binary stylometry project:
1.  Make sure you have the Java 8 JDK installed and that JAVA_HOME points to it
2.  Make sure you have git installed
3.  Download/clone this project, then choose which version you want and continue accordingly

If you want to run the Binary Stylometry pipeline, continue from here:
4. Run binaryStylometrySetup.sh

If you want to run the Source Code Stylometry pipeline, continue from here:
4.  Run the appropriate version of the build script (depending on your OS - ProjectBuildDebian or ProjectBuildRPM)
5.  Acquire data
6.  Edit the file featureCalculators.conf in the config folder of the SCAA of the CodeStylometry project to fix any deviations from the defaults (should mostly be username change, possibly a language change, possibly change the data directory, and possibly change the location of .joernIndex - do not include .joernIndex in the path!)
7.  Edit the neo4j configuration files to indicate that the data directory is the .joernIndex folder (same path as in the featureCalculators.conf file, adding .joernIndex to the end, so according to the defaults is "/home/ec2-user/.joernIndex")
8.  Go to the SCAA folder and use make to build and run the CodeStylometry ast and feature extraction as necessary.
