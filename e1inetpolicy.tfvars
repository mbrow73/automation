# INET FIREWALL POLICY #
inet_firewall_rules = [
  # INGRESS INET INSPECTION RULE
  {
    name = "inspect-known-ingress-https"
    description = "this rule is for inspecting known HTTPS traffic"
    priority = 1
    direction = "INGRESS"
    action = "ALLOW"
    security_profile_group = null
    enable_logging = "true"
    src_ip_ranges  = ["192.168.1.1/32"]
    dest_ip_ranges = ["192.168.0.1/32"]
  }
]
