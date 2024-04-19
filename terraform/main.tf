terraform {
  backend "remote" {
    hostname     = "terraform.duke-energy.com"
    organization = "ai-endpoint-host"
    workspaces {
      prefix = "nonprod-"
    }
  }
  required_version = "~> 1.5.0"

  required_providers {
    awscore = {
      source  = "terraform.duke-energy.com/aws-core/awscore"
      version = "~> 1.0.0"
    } 
  }
}

provider "aws" {
  region = "us-east-1"
}