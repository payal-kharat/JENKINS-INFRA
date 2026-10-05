terraform {
  backend "s3" {
    bucket  = "payal-terraform-state"
    key     = "ecs-infrastructure/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}