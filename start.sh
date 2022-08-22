#!/bin/sh
set -e
cd $(dirname $0)
cargo build
mkdir -p ./gc-roots
mkdir -p ./profiles
mkdir -p ./configurations
mkdir -p ./cpio-cache
RUST_LOG=info \
cargo run -- \
--gc-root-dir ./gc-roots \
--config-dir ./configurations \
--profile-dir ./profiles/ \
--cpio-cache-dir ./cpio-cache/ \
--listen 127.0.0.1:3030
