resource "lxd_storage_pool" "storage_pool" {
  name = "${var.prefix}_${var.name}"
  driver = "dir"
  config = var.config
}
