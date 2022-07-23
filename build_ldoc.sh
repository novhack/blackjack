#!/bin/bash

rm -r target/ldoc
mkdir -p target/ldoc/sources
cargo run -- --generate-ldoc target/ldoc/sources
pushd target/ldoc
ldoc sources
popd
