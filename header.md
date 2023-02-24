# Resource group module

## Overview

This Terraform module creates an Azure Resource Group.

A resource group is a container that holds related resources together.
The resource group can include all the resources for the solution, or only those resources that needs to be managed as a group.

## Notes

None.

## Example

```yaml
module "rg" {
  # Terraform Cloud PMR use
  source  = "app.terraform.io/embergertf/resourcegroup/azurerm"
  version = "~>1.0.0"

  region_code     = var.main_region_code
  subsc_code      = var.subsc_nickname
  base_name       = "hub"
  additional_name = "terraform"
  iterator        = "01"

  additional_tags = local.base_tags

  # name_override = var.name_override
  # env           = ""
  # owner         = var.owner
  # add_random    = false
  # rnd_length    = 0
}
```
