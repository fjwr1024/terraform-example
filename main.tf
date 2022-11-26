# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket  = "bucketname"
    key     = "tastylog-dev.tfstate"
    region  = "region"
    profile = "terraformuserprofile"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "profile_name"
  region  = "region_name"
}

# ---------------------------------------------
# Variables
# ---------------------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}
