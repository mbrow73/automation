terraform-ngfw-tls/
├── main.tf
├── variables.tf
├── e1inetpolicy.auto.tfvars
└── modules/
    ├── ca/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── security_profiles/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── firewall_endpoints/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── tls_inspection/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf