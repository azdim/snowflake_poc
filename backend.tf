terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18.0"
    }
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.86.0"
    }
  }

  backend "s3" {
    bucket = "mybucket"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}