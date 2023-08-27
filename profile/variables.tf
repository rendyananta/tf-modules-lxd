variable "prefix" {
  type = string
  default = ""
}

variable "name" {
  type = string
}

variable "config" {
  type = map(string)
  default = {}
}

variable "limit_cpu" {
  type = string
  default = "1"
}

variable "limit_memory" {
  type = string
  default = "1GB"
}

variable "root_storage_name" {
  type = string
}