# Upgrade test: v1.0.11 adds outputs - validate they work correctly
run "creates_correct_resources_with_base_v1_0_11" {
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

run "plan_works_with_more_resources" {
  command = plan

  variables {
    num_resources = 4
  }

  assert {
    condition     = output.resource_count == 4
    error_message = "Expected resource_count=4 in plan, got ${output.resource_count}"
  }
}
