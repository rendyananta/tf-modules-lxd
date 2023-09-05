resource "lxd_project" "project" {
  name        = var.name
  description = var.description
  config = var.config
}