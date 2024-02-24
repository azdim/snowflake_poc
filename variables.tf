# Required
variable "snowflake_account" {
  type      = string
  sensitive = true
}

variable "environment" {
  type        = string
  description = "environment of deployment"
}

variable "warehouse_size" {
  type        = string
  description = "size of warehouse"

  validation {
    condition     = contains(["small", "large", "xlarge"], var.warehouse_size)
    error_message = "Not an allowed size."
  }

}

variable "password" {
  type      = string
  sensitive = true
}
