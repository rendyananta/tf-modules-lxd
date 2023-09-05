variable "name" {
  type = string
}

variable "ephemeral" {
  type = bool
  default = false
}

variable "type" {
  type = string
  default = null
}

variable "image" {
  type = string
}

variable "profile" {
  type = string
}

variable "network" {
  type = string
}

variable "ipv4" {
  type = string
  default = null
}

variable "limit_cpu" {
  type = string
  default = "1"
}

variable "limit_memory" {
  type = string
  default = "1GB"
}

variable "devices" {
  type = list(object({
    name = string
    type = string
    properties = map(string)
  }))

  default = []
}

variable "project" {
  type = string
  default = null
}