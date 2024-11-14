#
# Copyright 2024 Emmanuel Bergerat
#

# Created  on:  2022-10-11
# Created  by:  Emmanuel
# Modified on:  2024-11-14
# Modified by:  Emmanuel
# Modification: Update to base module version 4.0 + moved additional tags to base module
# Overview:
#   This module:
#   - Creates an Azure Resource Group

# -
# - Generate name for the Resource Group with base module
# -
module "rg_name" {
  # Terraform Cloud PMR use
  source  = "app.terraform.io/embergertf/base/azurerm"
  version = "~> 4.0"

  name_override = var.name_override
  naming_values = var.naming_values

  region_code     = var.region_code
  subsc_code      = var.subsc_code
  env             = var.env
  base_name       = var.base_name
  additional_name = var.additional_name
  iterator        = var.iterator
  owner           = var.owner
  additional_tags = var.additional_tags

  # Random name generation
  add_random = var.add_random
  rnd_length = var.rnd_length

  # Resource naming inputs
  resource_type_code = "rg"
  max_length         = 90
  no_dashes          = false
}

# -
# - Create the Resource Group
# -
resource "azurerm_resource_group" "this" {
  name     = module.rg_name.name
  location = module.rg_name.location

  tags = module.rg_name.tags
}
