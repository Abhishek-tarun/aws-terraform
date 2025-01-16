provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraformbackend-1310"
}

terraform {
  backend "s3" {
    bucket = "terraformbackend-1310"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}