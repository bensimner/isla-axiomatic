#!/usr/bin/env bash
./isla-axiomatic \
  -A ir/armv9p4.ir \
  -C isla/configs/armv9p4_mmu_on.toml \
  --footprint-config=isla/configs/armv9p4.toml \
  -m models/aarch64/models/aarch64_mmu_strong_ETS.cat \
  --probes-for-debug-more='AArch64_TakeReset __FetchInstr __DecodeExecute BranchTo AArch64_TakeException AArch64_TranslateAddress' \
  --armv8-page-tables \
  --check-sat-using='(then injectivity dt2bv eq2bv simplify distribute-forall cofactor-term-ite ctx-simplify qe solve-eqs bv)' \
  --remove-uninteresting=safe \
  "$@"
