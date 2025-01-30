#!/usr/bin/env sh
#
# Checks for Rust
#
# Usage: ./check_rust.sh

if ! which cargo > /dev/null; then
    echo 'error: no rust detected'
    echo '... isla-axiomatic requires rust'
    echo '    please ensure it is installed'
    echo '    ...  e.g. with https://rustup.rs/'
    echo '    and try again'
    exit 1
fi
