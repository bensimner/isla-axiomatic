# isla-axiomatic


Tools for running isla's memory model checker.

See the docs for isla-axiomatic in [doc/manual.html](doc/manual.html), with [version hosted online here](https://www.cl.cam.ac.uk/~bs630/rems-project/isla-axiomatic/manual.html).

## Quick startup

Run `make` to collect or update isla, assorted ISA definitions, and models.

Then, can run tests:

```
isla-axiomatic -A ir/armv9p4.ir -C isla/configs/armv9p4.toml -m models/aarch64/models/aarch64_base.cat tests/AArch64-MP+pos.litmus.toml
```

or with one of the helper scripts:

```
./run_aarch64.sh tests/AArch64-MP+pos.litmus.toml
```


## People

- [Alasdair Armstrong](http://alasdair.io/") (University of Cambridge)
- [Brian Campbell](http://homepages.inf.ed.ac.uk/bcampbe2/) (University of Edinburgh)
- [Ben Simner](https://www.cl.cam.ac.uk/~bs630/) (University of Cambridge)
- [Thibaut Perami](https://www.cst.cam.ac.uk/people/tp496) (University of Cambridge)
- [Peter Sewell](https://www.cl.cam.ac.uk/~pes20/) (University of Cambridge)

## Funding

This software was developed by the University of Cambridge Computer
Laboratory (Department of Computer Science and Technology), in part
under DARPA/AFRL contract FA8650-18-C-7809 ("CIFV"), in part funded by
EPSRC Programme Grant EP/K008528/1 "REMS: Rigorous Engineering for
Mainstream Systems", in part funded from the European Research Council
(ERC) under the European Union’s Horizon 2020 research and innovation
programme (grant agreement No 789108, "ELVER"), in part supported by
the UK Government Industrial Strategy Challenge Fund (ISCF) under the
Digital Security by Design (DSbD) Programme, to deliver a DSbDtech
enabled digital platform (grant 105694), in part funded by an Arm
iCASE doctoral studentship (18000005, Simner), and in part funded by
Google.
