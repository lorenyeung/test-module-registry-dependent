variable "num_resources" {
  description = "Number of random_id resources to create via the base module"
  type        = number
  default     = 2
}

variable "base_module_version" {
  description = "Version of test-module-registry to consume"
  type        = string
  default     = "v1.0.9"
}
