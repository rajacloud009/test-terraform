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
resource "aws_security_group" "redis" {
  name        = "redis-sg"
  description = "Security group for redis"
  vpc_id      = "${var.vpc_id}"  # Remove quotation marks
}

#
# ElastiCache resources
#
resource "aws_elasticache_replication_group" "redis" {
  replication_group_id          = "dev-redis"
  replication_group_description = "Your replication group description" 
  node_type                     = "${var.instance_type}"
  engine_version                = "${var.engine_version}"
  parameter_group_name          = "${var.parameter_group}"
  subnet_group_name             = "${var.subnet_group}"
  security_group_ids            = ["${aws_security_group.redis.id}"]
  port                          = "6379"
  number_cache_clusters         = "${var.desired_clusters}"
 

}

