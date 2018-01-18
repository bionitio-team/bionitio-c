#!/bin/sh

# Install C dependencies
echo 'C install'
(
   sudo apt-get install autoconf
   autoreconf --install
   ./configure
   make
   sudo make install
)
