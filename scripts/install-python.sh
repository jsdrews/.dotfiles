#!/bin/bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z $PYTHON_VERSION ]; then
    echo "Please set PYTHON_VERSION"
    exit 1
fi

if [ -z $BUILD_DIR ]; then
    echo "Please set BUILD_DIR"
    exit 1
fi

if [ -z $INSTALL_DIR ]; then
    echo "Please set INSTALL_DIR"
    exit 1
fi

# Download tarball, remove if it exists already
TAR_BALL=$BUILD_DIR/python.tar.gz
if [ -f $TAR_BALL ]; then
    rm -f $TAR_BALL
fi
URL="https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz"
echo "Downloading $URL -> $TAR_BALL ..."
curl -L -s -o $TAR_BALL $URL 

## Extract it
PYTHON_BUILD=$BUILD_DIR/Python-$PYTHON_VERSION
if [ -d $PYTHON_BUILD ]; then
    rm -rf $PYTHON_BUILD
fi
echo "Extracting $TAR_BALL"
tar xf $TAR_BALL -C $BUILD_DIR

# Build
cd $PYTHON_BUILD
./configure --enable-optimizations --prefix=$INSTALL_DIR
make
make install

