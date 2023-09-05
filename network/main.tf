resource "lxd_network" "network" {
  name = var.name
  project = var.project

  config = merge(
    var.config, {
      "ipv4.address" = var.ipv4_address
      "ipv4.nat" = var.ipv4_nat
    }
  )
}