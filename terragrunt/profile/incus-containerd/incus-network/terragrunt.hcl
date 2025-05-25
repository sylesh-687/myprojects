terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-network?ref=${local.branch}"
}

include {
  path = find_in_parent_folders()
}

inputs={}
