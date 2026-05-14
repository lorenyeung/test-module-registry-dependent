# Outputs are exposed only when base_module_version supports them (v1.0.11+)
# For v1.0.9 baseline tests, these outputs will not be asserted (base has no outputs).
output "base_outputs" {
  description = "All outputs from the base module"
  value       = module.base
}
