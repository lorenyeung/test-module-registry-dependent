# Cross-module test: dependent module consuming test-module-registry v1.0.10
# This is the "after upgrade" test — v1.0.10 added tftest.hcl files and outputs,
# v1.0.11 adds the outputs we assert on here. No breaking interface changes.

variables {
  num_resources       = 2
  base_module_version = "v1.0.11"
}

run "creates_correct_resource_count_with_base_v1_0_11" {
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

run "plan_works_with_more_resources_after_upgrade" {
  command = plan

  variables {
    num_resources       = 4
    base_module_version = "v1.0.11"
  }

  assert {
    condition     = output.resource_count == 4
    error_message = "Expected resource_count=4 in plan, got ${output.resource_count}"
  }
}
