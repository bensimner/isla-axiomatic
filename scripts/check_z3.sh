#!/usr/bin/env sh
#
# Checks the z3 version against known good ones.
#
# Usage: ./check_z3.sh

if ! which z3 > /dev/null; then
    echo 'error: no z3 detected'
    echo '... isla-axiomatic requires z3, at least version 4.8'
    echo '    please ensure it is installed'
    echo '    ...  e.g. with `opam install z3` or `apt install libz3-dev`'
    echo '         or download a recent version from https://github.com/Z3Prover/z3/releases/'
    echo '    and try again'
    exit 1
fi

if which ldconfig > /dev/null; then
    if ! ldconfig -v 2>&1 | grep z3 > /dev/null; then
        echo 'warning: could not find z3 on linker path'
        echo '... isla-axiomatic requires z3 as a library'
        echo '    please ensure it is installed'
        echo '    ... e.g. with `opam install z3` or `apt install libz3-dev`'
        echo '        or download a recent version from https://github.com/Z3Prover/z3/releases/'
        echo '    and ensure it is on the linker path'
        echo '    ... e.g. by setting LD_LIBRARY_PATH'
        echo '    and try again'
    fi
else
    echo 'no `ldconfig`, skipping link path check...'
fi

z3_version=$(z3 --version | sed -r 's/Z3 version (.*) - 64 bit/\1/')
z3_major=$(echo ${z3_version} | awk -F'.' '{print $1}')
z3_minor=$(echo ${z3_version} | awk -F'.' '{print $2}')
z3_micro=$(echo ${z3_version} | awk -F'.' '{print $3}')

case "$z3_major" in
4)
    case "$z3_minor" in
    8|9|10|11)
        echo "warning: z3 version '${z3_version}' old, use 4.12 or newer for best results"
        ;;
    12|13)
        ;;
    *)
        echo "error: unknown Z3 version '${z3_version}', expected 4.8.0 <= Version < 4.13.X"
        exit 1
        ;;
    esac
    ;;
*)
    echo "error: unknown Z3 version '${z3_version}', expected 4.X.Y"
    exit 1
    ;;
esac
