terraform {
  required_providers {
    harness = { source = "harness/harness" }
    random = { source = "hashicorp/random" }
    null = { source = "hashicorp/null" }
    time = { source = "hashicorp/time" }
  }
}

module "base" {
  source  = "loren.harness.io/WqS38aeyQjayoqy6mzwceA/test-module-registry/harness"
  version = "v1.0.11"
  num_resources = var.num_resources
}

variable "num_resources" {
  type    = number
  default = 2
}

output "resource_count" {
  value = module.base.resource_count
}

output "random_ids" {
  value = module.base.random_ids
}
