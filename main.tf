#
# Copyright 2023 Emmanuel Bergerat
#

# Created  on:  Oct. 11th, 2022
# Created  by:  Emmanuel
# Modified on:  Oct.31st, 2024
# Modified by:  Emmanuel
# Modification: Use of the updated base module v3.1.3, to allow more region_code values.
# Overview:
#   This module:
#   - Creates an Azure Resource Group

# -
# - Generate name for the Resource Group with base module
# -
module "rg_name" {
  # Terraform Cloud PMR use
  source  = "app.terraform.io/embergertf/base/azurerm"
  version = "~> 3.1"

  name_override = var.name_override

  region_code     = var.region_code
  subsc_code      = var.subsc_code
  env             = var.env
  base_name       = var.base_name
  additional_name = var.additional_name
  iterator        = var.iterator
  owner           = var.owner

  # Resource Group specifics settings
  resource_type_code = "rg"
  max_length         = 90
  no_dashes          = false
  add_random         = var.add_random
  rnd_length         = var.rnd_length
}

# -
# - Create the Resource Group
# -
resource "azurerm_resource_group" "this" {
  name     = module.rg_name.name
  location = module.rg_name.location

  tags = merge(module.rg_name.tags, var.additional_tags)
}
