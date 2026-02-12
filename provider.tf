terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  # alias      = "mumbai"
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}

provider "aws" {
  alias      = "virginia"
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

terraform {
  backend "s3" {
    bucket = "terraform-nikhil-123"
    key    = "india/terraform.tfstate"
    region = "ap-south-1"
    
  }
}
