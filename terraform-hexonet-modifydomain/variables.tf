variable "s_login" {
  type = string
  default = "reseller.com"
}

variable "s_pw" {
  type = string
  default = "reseller.com"
}

variable "command" {
  type = string
  default = "ModifyDomain"
}

variable "domain" {
  type = string
  default = "reseller.com"
}

variable "nameserver0" {
  type = string
}

variable "nameserver1" {
  type = string
}

variable "nameserver2" {
  type = string
}

variable "nameserver3" {
  type = string
}

variable "query_params" {
  type = string
  default = 0
}

locals {
  base-url = "https://coreapi.1api.net/api/call.cgi"
  command-url = "${local.base-url}?s_login=${var.s_login}&s_pw=${var.s_pw}&command=${var.command}&domain=${var.domain}"
  query_params = var.query_params != 0 ? var.query_params : "nameserver0=${var.nameserver0}&nameserver1=${var.nameserver1}&nameserver2=${var.nameserver2}&nameserver3=${var.nameserver3}"
}