variable "project" {
  type    = string
  default = "data-platform"
  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.project))
    error_message = "Use lowercase letters, digits, and hyphens."
  }
}

variable "environment" {
  type    = string
  default = "dev"
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "environment must be dev, test, or prod."
  }
}

variable "location" {
  type    = string
  default = "australiaeast"
}