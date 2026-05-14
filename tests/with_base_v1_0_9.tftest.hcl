# Cross-module test: dependent module consuming test-module-registry v1.0.9
# This is the "before upgrade" baseline test.

variables {
  num_resources       = 2
  base_module_version = "v1.0.9"
}

run "creates_correct_resource_count_with_base_v1_0_9" {
  command = apply

  assert {
    condition     = output.resource_count == 2
    error_message = "Expected resource_count=2, got ${output.resource_count}"
  }

  assert {
    condition     = length(output.random_ids) == 2
    error_message = "Expected 2 random IDs, got ${length(output.random_ids)}"
  }
}
