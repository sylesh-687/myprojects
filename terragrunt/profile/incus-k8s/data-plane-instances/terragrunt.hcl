terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-instance?ref=${local.branch}"
}

dependency "profile"{
  config_path="../data-plane-profile"
  mock_outputs={
    profile="profile"
  }
}
include {
  path = find_in_parent_folders()
}
inputs = {
  profile=dependency.profile.outputs.profile
  name = "data-plane"
  instance_count = "1"

}