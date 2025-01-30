#!/usr/bin/env bash
./isla-axiomatic \
  -A ir/armv9p4.ir \
  -C isla/configs/armv9p4.toml \
  -m models/models/aarch64_exn.cat \
  --probes-for-debug-more='AArch64_TakeReset __FetchInstr __DecodeExecute BranchTo AArch64_TakeException' \
  "$@"