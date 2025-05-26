terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-network?ref=${get_env("TG_GIT_BRANCH", "main")}"
}

include {
  path = find_in_parent_folders()
}

inputs={
  name   ="dp-network"
  config ={
    "ipv4.address"  = "10.42.0.1/28"
    "ipv4.nat"     = "true"
  }
}
