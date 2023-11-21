variable "project" {
  default = "Unknown"
}

variable "environment" {
  default = "Unknown"
}

variable "vpc_id" {
  default = "vpc-066d109349be8f16d"
}


variable "parameter_group" {
  default = "dev-redis-group"
}

variable "subnet_group" {
  default = "dev"
}


variable "desired_clusters" {
  default = "1"
}

variable "instance_type" {
  default = "cache.t2.micro"
}

variable "engine_version" {
  default = "6.x"
}


