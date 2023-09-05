variable "name" {
  type = string
}

variable "ipv4_address" {
  type = string
}

variable "ipv4_nat" {
  type = bool
  default = true
}

variable "ipv6_address" {
  type = string
  default = null
}

variable "ipv6_nat" {
  type = bool
  default = true
}

variable "config" {
   type = map(string)
   default = null
}

variable "project" {
  type = string
  default = null
}