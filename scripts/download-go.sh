#!/bin/bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z $GO_VERSION ]; then
    echo Please set GO_VERSION
    exit 1
fi

if [ -z $BUILD_DIR ]; then
    echo Please set BUILD_DIR
    exit 1
fi

if [ -z $INSTALL_DIR ]; then
    echo Please set INSTALL_DIR
    exit 1
fi

if [ -z $GO_PLATFORM_ARCH ]; then
    echo Please set GO_PLATFORM_ARCH 
    exit 1
fi

# Download tarball, remove if it exists already
TAR_BALL=$BUILD_DIR/go.tar.gz
if [ -f $TAR_BALL ]; then
    rm -f $TAR_BALL
fi
URL=https://go.dev/dl/go${GO_VERSION}.${GO_PLATFORM_ARCH}.tar.gz
echo "Downloading $URL -> $TAR_BALL ..."
curl -L -s -o $TAR_BALL $URL 

# Extract it
if [ -d $BUILD_DIR/go ]; then
    rm -rf $BUILD_DIR/go
fi
echo "Extracting $TAR_BALL"
tar xf $TAR_BALL -C $BUILD_DIR
rm -f $TAR_BALL

