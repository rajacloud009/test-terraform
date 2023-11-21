#
# Security group resources
#
resource "aws_security_group" "memcached" {
  name        = "memcached-sg"
  description = "Security group for Memcached"
  vpc_id      = "${var.vpc_id}"  # Remove quotation marks
}

#
# ElastiCache resources
#
resource "aws_elasticache_cluster" "memcached" {
  lifecycle {
    create_before_destroy = true
  }

  cluster_id             = "${var.cluster_id}"
  engine                 = "memcached"
  engine_version         = "${var.engine_version}"
  node_type              = "${var.instance_type}"
  num_cache_nodes        = "${var.desired_clusters}"
  parameter_group_name   = "${var.parameter_group}"
  subnet_group_name      = "${var.subnet_group}"
  security_group_ids     = ["${aws_security_group.memcached.id}"]
  port                   = "11211"


}


