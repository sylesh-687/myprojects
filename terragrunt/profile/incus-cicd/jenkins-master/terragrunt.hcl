
#terraform {
#    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-instance?ref=${get_env("TG_GIT_BRANCH", "main")}"
#}
include {
  path = find_in_parent_folders("common.hcl")
}

inputs={
    name="jenkins-master"
    instance_count=1
    profile="default"
}
