output "random_ids" {
  description = "The random IDs created by the base module"
  value       = module.base.random_ids
}

output "resource_count" {
  description = "Number of resources created by the base module"
  value       = module.base.resource_count
}
