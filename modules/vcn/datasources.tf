data "oci_core_services" "all_services" {
  filter {
    name = "name"
    values = ["All.*"]
    regex = true
  }
}