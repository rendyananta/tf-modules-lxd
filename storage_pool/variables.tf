variable "prefix" {
  type = string
  default = ""
}

variable "name" {
  type = string
}

variable "config" {
  type = map(string)
  default = null
}

