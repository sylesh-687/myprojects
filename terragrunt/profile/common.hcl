locals {
  
  module_name="incus-instance"
  base_url="https://github.com/sylesh-687/terraform.git//modules/incus/${local.module_name}"
  branch=get_env("TG_GIT_BRANCH", "main")
  source="${local.base_url}?=${local.branch}"
  
}

terraform {
  source="${local.source}"
  }
