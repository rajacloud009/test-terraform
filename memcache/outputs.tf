

output "port" {
  value = "11211"
}

output "configuration_endpoint" {
  value = "${aws_elasticache_cluster.memcached.configuration_endpoint}"
}

output "endpoint" {
  value = "${aws_elasticache_cluster.memcached.cluster_address}"
}
