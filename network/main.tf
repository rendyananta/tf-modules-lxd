resource "lxd_network" "network" {
  name = "${var.prefix}_${var.name}"

  config = merge(
    var.config, {
      "ipv4.address" = var.ipv4_address
      "ipv4.nat" = var.ipv4_nat
    }
  )
}