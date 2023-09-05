resource "lxd_instance" "instance" {
  name = var.name
  ephemeral = var.ephemeral
  project = var.project

  type = var.type
  image = var.image
  profiles = [
    var.profile
  ]
  
  limits = {
    cpu = var.limit_cpu
    memory = var.limit_memory
  }

  # predefined network connectin
  device {
    name = "eth0"
    type = "nic"
    properties = {
      network = var.network
      "ipv4.address" = var.ipv4
    }
  }

  dynamic "device" {
    for_each = {
      for index, device in var.devices:
      device.name => device
    }

    content {
      name = each.key
      type = each.value.type
      properties = each.value.properties 
    }
  }
}