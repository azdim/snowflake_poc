resource "snowflake_role" "role" {
  name     = "MARKETING"
}

resource "snowflake_grant_privileges_to_role" "database_grant" {
  privileges = ["USAGE"]
  role_name  = snowflake_role.role.name
  on_account_object {
    object_type = "DATABASE"
    object_name = snowflake_database.db.name
  }
}