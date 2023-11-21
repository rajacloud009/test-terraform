terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.42"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}


module "redis" {
  source = "./modules/redis"
  # Add any specific variables if needed
}

module "memcached" {
  source = "./modules/memcached"
  # Add any specific variables if needed
}

