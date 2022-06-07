This project will not be mantained, beacuse it is slow. Although it is worked, the result isn't guaranteed.

# MPC domain-sepecific Verification Tool for LLVM Representation 
Based on haybale 0.7.0-pre git commit log 8947939a2d3e2f05fd3c3060912d0ab94d98e07f

## Install
- install rust, set rustc version to 1.50.0
- install llvm version 11, export llvm in path 
- install boolector, build at shared-library mode
- export llvm-prefix-110 in path 
- export boolector in rust load path

```bash
export LLVM_SYS_110_PREFIX=<path-to-llvm>
export LD_LIBRARY_PATH=<path-to-boolector>/build/lib:$LD_LIBRARY_PATH
export PATH="<path-to-llvm>/bin:$PATH"
```

## Notice
```rust
let bv: <B as Backend>::BV = BV::new(self.solver.clone(), 1, None );
let bv2 = bv.clone();
assert!(revealed_bv.get_id() == ne.get_id()); // clone doesn't get a new id, this assert always true
```

```rust
let bv: <B as Backend>::BV = BV::new(self.solver.clone(), 1, None );
let bv2 = bv.not();
assert!(revealed_bv.get_id() == ne.get_id()); // not() doesn't get a new id, this assert always true
```
