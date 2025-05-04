provider "google" {
    credentials = var.GOOGLE_CREDENTIALS
    project     = var.project_id
    region      = "us-central1"
}
### Inet Firewall Policy Module ###
module "firewall_policy" {
  policy_name               = "inet-policy"
  project_id                = var.project_id
  source                    = "./modules/inet_firewall_policy"
  inet_vpc_id               = var.inet_vpc_id
  inet_firewall_rules       = var.inet_firewall_rules
}

