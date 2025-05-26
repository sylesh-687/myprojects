terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-instance?ref=${get_env("TG_GIT_BRANCH", "main")}"
}

dependency "profile"{
  config_path="../incus-profile"
  mock_outputs={
    profile="profile"
  }
}
include {
  path = find_in_parent_folders()
}
inputs = {
  profile=dependency.profile.outputs.profile
}