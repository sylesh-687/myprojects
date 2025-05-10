terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-instance?ref=s-dev"
}
include {
  path = find_in_parent_folders()
}

inputs={
    name="jenkins-master"
    instance_count=1
    profile="default"
}