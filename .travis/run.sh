#!/bin/bash

set -ex

if [[ "$(uname -s)" == 'Darwin' ]]; then
    if which pyenv > /dev/null; then
        eval "$(pyenv init -)"
    fi
    pyenv activate conan
fi

if [[ "$(uname -s)" == 'Linux' ]]; then
    CC=$C_COMPILER
    CXX=$CXX_COMPILER
fi

mkdir build && cd build
conan install .. -s build_type=${BUILD_TYPE} --build=missing
CC=${C_COMPILER} CXX=${CXX_COMPILER} cmake .. -DCMAKE_BUILD_TYPE=$BUILD_TYPE
cmake --build . -- VERBOSE=1
ctest -V
