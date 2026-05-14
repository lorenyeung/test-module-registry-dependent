module "base" {
  source  = "loren.harness.io/WqS38aeyQjayoqy6mzwceA/test-module-registry/harness"
  version = var.base_module_version

  num_resources = var.num_resources
}
