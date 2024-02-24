provider "snowflake" {
  # Configuration options
  account  = var.snowflake_account
  username = "YOUR_SNOWFLAKE_USER_NAME"
  role     = "YOUR_SNOWFLAKE_ROLE" # Typically, this will be ACCOUNTADMIN or a role with similar privileges to manage resources.
  # deprecated parameter. see: https://pkg.go.dev/github.com/snowflakedb/gosnowflake#hdr-Connection_Parameters
  # region   = "YOUR_SNOWFLAKE_REGION"
  private_key_path = "PATH_TO_YOUR_PRIVATE_KEY_FILE" # If you're using key pair authentication.
}
