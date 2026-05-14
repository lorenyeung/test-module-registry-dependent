# Cross-module test: dependent module consuming test-module-registry v1.0.11
# This is the "after upgrade" test — v1.0.11 adds outputs (random_ids, resource_count).
# Demonstrates that the upgrade adds output capabilities without breaking apply.

variables {
  num_resources       = 2
  base_module_version = "v1.0.11"
}

run "creates_resources_with_base_v1_0_11" {
  command = apply

  assert {
    condition     = output.base_outputs.resource_count == 2
    error_message = "Expected resource_count=2 from upgraded base module, got ${output.base_outputs.resource_count}"
  }

  assert {
    condition     = length(output.base_outputs.random_ids) == 2
    error_message = "Expected 2 random IDs from upgraded base module, got ${length(output.base_outputs.random_ids)}"
  }
}

run "plan_works_with_more_resources_after_upgrade" {
  command = plan

  variables {
    num_resources       = 4
    base_module_version = "v1.0.11"
  }

  assert {
    condition     = output.base_outputs.resource_count == 4
    error_message = "Expected resource_count=4 in plan after upgrade, got ${output.base_outputs.resource_count}"
  }
}
