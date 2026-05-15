module "base" {
  source        = "git::https://github.com/lorenyeung/test-module-registry.git?ref=v1.0.11"
  num_resources = var.num_resources
}
