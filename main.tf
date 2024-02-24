# terraform {
#   required_providers {
#     snowflake = {
#       source = "Snowflake-Labs/snowflake"
#       version = "0.86.0"
#     }
#   }
# }

locals {
  #locally accessible variables

  warehouse_name = "${var.environment}-warehouse"
}


resource "snowflake_warehouse" "warehouse" {
  name           = local.warehouse_name
  comment        = "small warehouse"
  warehouse_size = var.warehouse_size
}
