# INET FIREWALL POLICY #
inet_firewall_rules = [ {
    name                   = "allow-ssh"
    description            = "Allow SSH access"
    priority               = 1000
    direction              = "INGRESS"
    action                 = "allow"
    enable_logging         = true
    src_ip_ranges          = ["192.168.1.1/32"]
    dest_ip_ranges         = ["192.168.0.1/32"]
    ports                  = ["22"]
    protocol               = "tcp"
} ]