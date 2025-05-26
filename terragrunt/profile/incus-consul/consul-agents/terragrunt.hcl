terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-instance?ref=${get_env("TG_GIT_BRANCH", "main")}"
}

include {
  path = find_in_parent_folders()
}

dependency "profile" {
    config_path="../consul-incus-profile"
    mock_outputs={
    profile="profile"
  }
}

inputs={
    name="consul-agents"
    instance_count=3
    profile=dependency.profile.outputs.profile
}