# test-module-registry-dependent

A dependent module used to test cross-module version upgrade scenarios with Harness IACM Module Registry.

This module wraps [`test-module-registry`](https://github.com/lorenyeung/test-module-registry) 
and exposes the same interface, allowing tests to validate that version upgrades to the base 
module do not break dependent consumers.

## Test Cases

| Test file | Purpose |
|---|---|
| `tests/with_base_v1_0_9.tftest.hcl` | Baseline: consume base module at v1.0.9 (pre-test-file addition) |
| `tests/with_base_v1_0_10.tftest.hcl` | Upgrade: consume base module at v1.0.10 (post-test-file addition) |
