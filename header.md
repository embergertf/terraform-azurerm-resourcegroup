# Resource group module

## Overview

This Terraform module creates an Azure Resource Group.

A resource group is a container that holds related resources together.
The resource group can include all the resources for the solution, or only those resources that needs to be managed as a group.

## Notes

None.

## Example

```yaml
module "rg_region1" {
  # Terraform Cloud PMR use
  source  = "app.terraform.io/embergertf/resourcegroup/azurerm"
  version = "~>1.0.0"

  name_override = var.name_override

  region_code     = var.region_code1
  subsc_code      = var.subsc_code
  env             = var.env
  base_name       = var.base_name
  additional_name = var.additional_name
  iterator        = var.iterator

  owner      = var.owner
  add_random = var.add_random
  rnd_length = var.rnd_length
}
```
