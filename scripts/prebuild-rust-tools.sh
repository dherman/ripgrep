#!/bin/bash

root=$(realpath $(dirname $0)/..)

cd $root
pwd

echo "Pre-building Rust toolchain..."
bazel build @rules_rust//util/process_wrapper:process_wrapper > /dev/null 2>&1
bazel build //crates/globset:globset > /dev/null 2>&1

echo "Toolchain cached. Ready for demo."
echo "Run: time bazel build //:rg"
