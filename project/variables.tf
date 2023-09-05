variable "name" {
  type = string
}

variable "description" {
  type = string
}

variable "config" {
  type = map(string)
  default = null
}

