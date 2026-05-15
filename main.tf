terraform {
  required_providers {
    harness = { source = "harness/harness" }
  }
}

module "base" {
  source        = "git::https://github.com/lorenyeung/test-module-registry.git?ref=main"
  num_resources = var.num_resources
}

variable "num_resources" {
  type    = number
  default = 2
}
