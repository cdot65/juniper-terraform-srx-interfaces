variable "apply_group_name" {
  type        = string
  description = "Name of our apply-group for the interface configuration stanza"
  // default     = "cdot65_ipsec"
}

// Interface name
variable "interface_name" {
  type        = string
  description = "Name of our interface"
}

// Interface description
variable "interface_description" {
  type        = string
  description = "Name of our interface"
}

// Interface sub interface unit
variable "subinterface_unit" {
  type        = string
  description = "Sub interface unit number"
}

// IPv4 address
variable "subinterface_address" {
  type        = string
  description = "IPv4 address of subinterface"
}