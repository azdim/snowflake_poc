locals {
  user_info = yamldecode(file("users.yaml"))
}

resource "snowflake_user" "user" {
  for_each             = local.user_info.users.information
  name                 = each.value.name
  login_name           = each.value.login_name
  comment              = each.value.comment
  password             = var.password
  disabled             = false
  display_name         = each.value.display_name
  email                = each.value.email
  first_name           = each.value.first_name
  last_name            = each.value.last_name
  default_warehouse    = local.warehouse_name
  default_role         = "SYSADMIN"
  must_change_password = true
}

resource "snowflake_user_grant" "grant" {
  for_each          = local.user_info.users.information
  user_name         = each.value.name
  privilege         = each.value.privilege
  roles             = each.value.roles
  with_grant_option = false

  depends_on = [
    snowflake_user.user
  ]
}