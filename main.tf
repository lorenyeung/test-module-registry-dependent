terraform {
  required_providers {
    harness = { source = "harness/harness" }
    random  = { source = "hashicorp/random" }
    null    = { source = "hashicorp/null" }
    time    = { source = "hashicorp/time" }
  }
}

module "base" {
  source        = "git::https://github.com/lorenyeung/test-module-registry.git?ref=v1.0.11"
  num_resources = var.num_resources
}

variable "num_resources" {
  type    = number
  default = 2
}
