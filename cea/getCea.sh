#!/bin/bash
#Downloads, builds and generates the thermo and transport libraries for NASA's chemical equilibrium analysis software
wget https://www.grc.nasa.gov/WWW/CEAWeb/CEA+Fortran.tar.Z
#Uncompresses
uncompress CEA+Fortran.tar.Z
tar xopf CEA+Fortran.tar 
#Builds
gfortran cea2.f -o cea2
#Generates the thermo and transport libraries
echo 'trans'  | ./cea2
echo 'thermo' | ./cea2
