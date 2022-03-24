# Juniper Terraform Example: Configure Interfaces

[![N|Solid](https://raw.githubusercontent.com/cdot65/juniper-terraform-srx/dev/site/content/assets/images/topology.png)](https://juniper.net/)

## Overview

The goal of this project is to provide an example method to interact with Juniper SRX products with Terraform.

This project will build an interface configuration on a Juniper SRX firewall

- create interface `lo0`
- apply a description of `provisioned with Terraform` to our new loopback
- create a sub-interface of `lo0` with a unit ID of `0`
- apply an IPv4 address of `10.1.2.3/32` to our `lo0.0`

## 📋 Terraform version compatibility

This project was tested with Terraform version v1.1.7

## 🚀 Deploy

```bash
terraform init
terraform plan
terraform apply
```

## Development

Want to contribute? Great!

Submit a PR and let's work on this together :D