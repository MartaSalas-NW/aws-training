terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
    elasticsearch = {
      source  = "phillbaker/elasticsearch"
      version = "2.0.4"
    }
  }

  backend "s3" {
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"
}