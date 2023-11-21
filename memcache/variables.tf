

variable "vpc_id" {
  default = "vpc-066d109349be8f16d"
}

variable "cluster_id" {
  default = "memcache"
}

variable "parameter_group" {
  default = "default.memcached1.6"
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
  default = "1.6.17"
}

