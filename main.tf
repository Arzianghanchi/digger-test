provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source  = "clouddrove/s3/aws"
  version = "2.0.0"

  name        = "clouddrove-digger"
  environment = "test"
  label_order = ["environment", "name"]
  versioning  = false
}