terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-instance?ref=shailesh-dev"
}
include {
  path = find_in_parent_folders()
}
inputs = {}