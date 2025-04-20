terraform {
    source="https://github.com/sylesh-687/terraform.git//modules/incus/incus-instance?ref=shailesh-dev"
}
inputs={
    name="incus-test"
    instance_count=4
}
