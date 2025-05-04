variable "GOOGLE_CREDENTIALS" {
  description = "Path to the Google Cloud service account key file"
  type        = string
}

variable "project_id" {
  description = "GCP project ID where the resources will be created"
  type        = string
  default     = "backends-454520"
}

variable "inet_vpc_id" {
  description = "VPC ID for the Internet VPC"
  type        = string
  default     = "default"
}

variable "inet_firewall_rules" {
  description = <<-EOT
    A list of firewall‐policy rules to create.  
    Each object must include:
      - name                   = unique name for the rule  
      - description            = human description  
      - priority               = rule priority (lower = higher match)  
      - direction              = "INGRESS" or "EGRESS"  
      - action                 = one of ["allow","deny","apply_security_profile_group"]  
      - security_profile_group = (if action == "apply_security_profile_group")  
      - enable_logging         = bool  
      - src_ip_ranges          = list(string)  
      - dest_ip_ranges         = list(string)  
      - ports                  = list(string)  # layer4 ports  
      - tls_inspection         = bool           # whether to decrypt TLS  
  EOT
  type = list(object({
    name                   = string
    description            = string
    priority               = number
    direction              = string
    action                 = string
    enable_logging         = bool
    src_ip_ranges          = list(string)
    dest_ip_ranges         = list(string)
    ports                  = list(string)
    protocol               = string
  }))
}