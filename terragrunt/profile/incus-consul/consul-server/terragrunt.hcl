terraform {
  source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-instance?ref=s-dev"
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
    profile=dependency.profile.outputs.profile
    name="consul-server"
    instance_count=1

}