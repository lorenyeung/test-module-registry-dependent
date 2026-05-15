module "base" {
  source        = "git::https://github.com/lorenyeung/test-module-registry.git?ref=main"
  num_resources = var.num_resources
}
