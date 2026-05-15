# Tofu test: validates dependent module consuming test-module-registry via git ref
run "creates_correct_resources" {
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

run "plan_with_more_resources" {
  command = plan

  variables {
    num_resources = 4
  }

  assert {
    condition     = output.resource_count == 4
    error_message = "Expected resource_count=4 in plan, got ${output.resource_count}"
  }
}
