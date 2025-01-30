.PHONY: all isla isla-litmus ir check-z3 check-rust submodules

all: isla isla-litmus ir check-z3 check-rust

Q = @

submodules:
	$(Q)git submodule init
	$(Q)git submodule update

ir: submodules
	-$(Q)gunzip -fk ir/*.ir.gz

isla: submodules
	$(Q)$(MAKE) -C isla/

isla-litmus: submodules
	$(Q)$(MAKE) -C isla/isla-litmus

check-z3:
	./scripts/check_z3.sh

check-rust:
	./scripts/check_rust.sh