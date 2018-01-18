#!/bin/sh

# Install C dependencies
echo 'C install'
(
   sudo apt-get install autoconf
   cd c
   autoreconf --install
   ./configure
   make
)
