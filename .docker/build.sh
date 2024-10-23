#!/bin/bash

DEFAULT_BUILD_TARGET="web"
DEFAULT_BUILD_MODE="release"

if [ "$#" -eq 0 ]; then
    BUILD_TARGET=$DEFAULT_BUILD_TARGET
    BUILD_MODE=$DEFAULT_BUILD_MODE
elif [ "$#" -eq 2 ]; then
    BUILD_TARGET=$1
    BUILD_MODE=$2
else
    echo "Usage: $0 [<build_target> <build_mode>]\nE.g. $0 web release"
    exit 1
fi

echo "Building with target: $BUILD_TARGET, mode: $BUILD_MODE"

if [ "$(uname)" == "Darwin" ]; then
    PLATFORM_FLAG="--platform linux/amd64"
else
    PLATFORM_FLAG=""
fi

docker build $PLATFORM_FLAG -f .docker/kdf-android.dockerfile . -t komodo/kdf-android --build-arg KDF_BRANCH=main
docker build $PLATFORM_FLAG -f .docker/android-sdk.dockerfile . -t komodo/android-sdk:34
docker build $PLATFORM_FLAG -f .docker/komodo-wallet-android.dockerfile . -t komodo/komodo-wallet

# Use the provided arguments for flutter build
docker run $PLATFORM_FLAG --rm -v ./build:/app/build \
  -u $(id -u):$(id -g) \
  komodo/komodo-wallet:latest bash -c "flutter pub get && flutter analyze && flutter build $BUILD_TARGET --$BUILD_MODE || flutter build $BUILD_TARGET --$BUILD_MODE"
