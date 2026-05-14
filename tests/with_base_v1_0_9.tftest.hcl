# Cross-module test: dependent module consuming test-module-registry v1.0.9
# This is the "before upgrade" baseline test.

variables {
  num_resources       = 2
  base_module_version = "v1.0.9"
}

run "creates_resources_with_base_v1_0_9" {
  command = apply

  assert {
    condition     = module.base != null
    error_message = "base module output should not be null"
  }
}
