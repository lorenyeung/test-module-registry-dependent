terraform {
  required_providers {
    random = { source = "hashicorp/random" }
    null   = { source = "hashicorp/null" }
    time   = { source = "hashicorp/time" }
  }
}

module "base" {
  source        = "git::https://github.com/lorenyeung/test-module-registry.git?ref=main"
  num_resources = 2
}
