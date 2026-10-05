terraform {
  backend "s3" {
    bucket  = "payal-terraform-state"
    key     = "ecs-infrastructure/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}