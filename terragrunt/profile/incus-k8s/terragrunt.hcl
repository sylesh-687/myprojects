generate "provider_config" {
  path      = "provider_override.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
  terraform {
    required_providers {
      incus = {
        source  = "lxc/incus"
        version = "0.3.1"
    }
  }
}
EOF
}
inputs={}
