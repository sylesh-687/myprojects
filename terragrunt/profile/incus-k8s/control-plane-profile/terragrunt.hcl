terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-profile?ref=${get_env("TG_GIT_BRANCH", "main")}"
}
include {
  path = find_in_parent_folders()
}

dependency "network" {
  config_path = "../control-plane-network"
  mock_outputs = {
    network_name = "mock-network-output"
  }
}
inputs = {
  name   ="control-plane-profile"
  network=dependency.network.outputs.network_name
}