
output "vpc_id" {
  value       = join("", google_compute_network.vpc[*].id)
  description = "The outputs of the created VPC."
}

output "gateway_ipv4" {
  value       = join("", google_compute_network.vpc[*].gateway_ipv4)
  description = "The IPv4 address of the gateway"
}

output "self_link" {
  value       = join("", google_compute_network.vpc[*].self_link)
  description = "The URI of the created resource"
}

output "numeric_id" {
  value       = join("", google_compute_network.vpc[*].numeric_id)
  description = "Generated unique numeric identifier."
}

output "vpc_name" {
  value       = join("", google_compute_network.vpc[*].name)
  description = "The outputs of the created VPC Name."
}
