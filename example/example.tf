provider "google" {
  project = "testing-gcp-ops"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}


module "vpc" {
  source                                    = "../"
  name                                      = "ops"
  environment                               = "test"
  routing_mode                              = "REGIONAL"
  mtu                                       = 1460
  network_firewall_policy_enforcement_order = "AFTER_CLASSIC_FIREWALL"
}