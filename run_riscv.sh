#!/usr/bin/env bash
./isla-axiomatic \
  -A ir/riscv64-9454e6e8.ir \
  -C isla/configs/riscv64.toml \
  -m models/riscv64/riscv.cat \
  $*