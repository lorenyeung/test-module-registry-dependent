# Cross-module test: dependent module consuming test-module-registry v1.0.10
# This is the "after upgrade" test — v1.0.10 added tftest.hcl files but no
# breaking interface changes, so this should pass identically to v1.0.9.

variables {
  num_resources       = 2
  base_module_version = "v1.0.10"
}

run "creates_resources_with_base_v1_0_10" {
  command = apply

  assert {
    condition     = module.base != null
    error_message = "base module output should not be null after version upgrade"
  }
}

run "plan_still_valid_after_upgrade" {
  command = plan

  variables {
    num_resources       = 4
    base_module_version = "v1.0.10"
  }

  assert {
    condition     = module.base != null
    error_message = "module.base plan should succeed with upgraded version"
  }
}
