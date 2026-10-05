terraform {
  backend "s3" {
    bucket  = "payal-terraform-state"
    key     = "employee-mgm/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}