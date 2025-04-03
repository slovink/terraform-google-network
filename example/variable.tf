variable "network_name" {
  description = "Name of the VPC network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "gcp_bucket" {
  description = "GCS Bucket for backend storage"
  type        = string
}
