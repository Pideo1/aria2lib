#!/usr/bin/env bash

## Clone
git clone https://github.com/Pideo1/aria2-android --recurse-submodules --depth 1
cd aria2-android
git checkout $@

## Prepare env
export SILENT=true

## Do stuff
./build_all.sh

## Check the result

file -E ./bin/arm64-v8a/bin/aria2c || exit 1
