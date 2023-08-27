resource "lxd_profile" "profile" {
  name = "${var.prefix}_${var.name}"

  config = merge(var.config, {
    "limits.cpu" = var.limit_cpu
    "limits.memory" = var.limit_memory
  })

  device {
    type = "disk"
    name = "root"

    properties = {
      pool = var.root_storage_name
      path = "/"
    }
  }
}