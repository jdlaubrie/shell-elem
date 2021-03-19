#!/bin/bash
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=. -H. -Bbuild
#cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=. -H. -Bbuild
cd build
make
make install
cd ../bin
chmod +x shelle
cd ..
