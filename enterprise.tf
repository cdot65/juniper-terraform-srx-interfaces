terraform {
  required_providers {
    junos-interfaces = {
      source  = "cdot65/junos-interfaces"
      version = "0.0.1"
    }
  }
}

provider "junos-interfaces" {
  host     = "192.168.105.196"
  port     = var.juniper_ssh_port
  sshkey   = var.juniper_ssh_key
  username = var.juniper_user_name
  password = var.juniper_user_password
}

module "interfaces" {
  // interface lo0 description "provisioned with Terraform"
  // interface lo0 unit 0 family inet 10.1.2.3/32"
  apply_group_name      = "cdot65_interfaces"
  interface_name        = "lo0"
  interface_description = "provisioned with Terraform"
  subinterface_unit     = "0"
  subinterface_address  = "10.1.2.3/32"

  // passing information into our provider
  source     = "./interfaces"
  providers  = { junos-interfaces = junos-interfaces }
  depends_on = [junos-interfaces_destroycommit.commit-main]
}

resource "junos-interfaces_commit" "commit-main" {
  resource_name = "commit"
  depends_on    = [module.interfaces]
}

resource "junos-interfaces_destroycommit" "commit-main" {
  resource_name = "destroycommit"
}
