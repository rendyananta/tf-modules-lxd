resource "lxd_storage_pool" "storage_pool" {
  name = var.name
  project = var.project
  driver = "dir"
  config = var.config
}
