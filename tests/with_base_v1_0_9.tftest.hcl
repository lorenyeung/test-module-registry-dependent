# Cross-module test: dependent module consuming test-module-registry v1.0.9
# This is the "before upgrade" baseline test — v1.0.9 has no outputs.
# We validate that the module applies successfully (no errors).

variables {
  num_resources       = 2
  base_module_version = "v1.0.9"
}

run "applies_successfully_with_base_v1_0_9" {
  command = apply
  # No output assertions since v1.0.9 has no outputs — just verifying apply succeeds
}
