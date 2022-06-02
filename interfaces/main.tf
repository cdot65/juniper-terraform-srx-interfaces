terraform {
  required_providers {
    junos-interfaces = {
      source  = "cdot65/junos-interfaces"
      version = "0.0.1"
    }
  }
}

// Interface Description
resource "junos-interfaces_InterfacesInterfaceDescription" "interface_description" {
  resource_name = format("%s_%s", var.apply_group_name, "interface_description")
  name          = var.interface_name
  description   = var.interface_description
}

// Interface Sub Interface Address
resource "junos-interfaces_InterfacesInterfaceUnitFamilyInetAddressName" "subinterface_address" {
  resource_name = format("%s_%s", var.apply_group_name, "subinterface_address")
  name          = var.interface_name
  name__1       = var.subinterface_unit
  name__2       = var.subinterface_address
}
