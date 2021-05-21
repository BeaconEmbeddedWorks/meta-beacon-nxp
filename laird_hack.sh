#!/bin/sh

# This is a hack to copy laird firmware files download from the laird github repository
# otherwise it has to be copied manually and breaks the build if its missing
#

CWD=`pwd`
wget -O $CWD/../release/laird-lwb5-fcc-firmware-7.0.0.326.tar.bz2 "https://github.com/LairdCP/Sterling-LWB-and-LWB5-Release-Packages/releases/download/LRD-REL-7.0.0.326/laird-lwb5-fcc-firmware-7.0.0.326.tar.bz2"
