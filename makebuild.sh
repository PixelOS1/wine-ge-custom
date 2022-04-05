#!/bin/bash

# usage: ./makebuild.sh name winerepo branch
# example: ./makebuild.sh lutris http://github.com/gloriouseggroll/wine ge-5.2
# build name output: wine-lutris-ge-5.2-x86_64.tar.xz

# start build
cd buildbot/runners/wine && ./build.sh --as $1 --version $3 --with $2 --branch $3 --useccache --usemingw --noupload --keep --dependencies
