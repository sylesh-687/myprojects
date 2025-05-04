terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-network"
}

include {
  path = find_in_parent_folders()
}

inputs={
  name   ="cp-network"
  config ={
    "ipv4.address"  ="192.168.100.1/28"
    "ipv4.nat"     = "true"
  }
}
