#configure aws provider
provider "aws" {
  region  = "us-east-1"
  profile = "misgav"
}

#store the terraform state file in s3
terraform {
  backend "s3" {
    bucket         = "misgavterraformstate"
    key            = "terraform.tfstate.dev"
    region         = "us-east-1"
    dynamodb_table = "Terraform-state-lock"
  }
}

