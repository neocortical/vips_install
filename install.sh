#!/bin/bash

echo "Installing libvips dependencies via yum"
sudo yum groupinstall -y "Development Tools"
sudo yum install -y gtk-doc libxml2-devel libjpeg-turbo-devel libpng-devel libtiff-devel libexif-devel libgsf-devel lcms-devel ImageMagick-devel gobject-introspection-devel libwebp-devel curl

curl -OL 'https://github.com/neocortical/vips_install/raw/master/libvips-8.6.3.tar.gz'
tar xzvf libvips-8.6.3.tar.gz
cd libvips-8.6.3
./configure --enable-debug=no --enable-docs=no --enable-cxx=yes --without-python --without-orc --without-fftw --prefix=/usr



