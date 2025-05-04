terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-instance?ref=s-dev"
}

dependency "profile"{
  config_path="../control-plane-profile"
  mock_outputs={
    profile="profile"
  }
}
include {
  path = find_in_parent_folders()
}
inputs = {
  profile=dependency.profile.outputs.profile
  name="control-plane"
  instance_count=3
}