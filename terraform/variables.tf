variable "prefix" {
  type        = string
  description = "The prefix to add to resource names"
  default     = "prefix"
}

variable "location" {
  type        = string
  description = "The Azure Region where the resource should exist"
  default     = "UK South"
}

variable "vnets" {
  type = map(object({
    location      = string
    address_space = string
    peerings      = list(string)
    subnets       = map(object({
      address_space = string
      vms           = list(string)
    }))
  }))
}