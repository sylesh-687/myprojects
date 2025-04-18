resource "incus_instance" "instance" {
  name  = "instance1"
  image = "images:ubuntu/22.04"

  config = {
    "boot.autostart" = true
    "limits.cpu" = 2
  }
}
