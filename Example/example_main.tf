#
# Copyright 2022 Emmanuel Bergerat
#

#--------------------------------------------------------------
#   Test Resource Group module Main
#--------------------------------------------------------------
module "rg_region1" {
  # Local use
  source = "../../terraform-azurerm-resourcegroup"

  # Terraform Cloud/Enterprise use
  # source  = "app.terraform.io/embergertf/resourcegroup/azurerm"
  # version = "~>1.0.0"

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
module "rg_region2" {
  # Local use
  source = "../../terraform-azurerm-resourcegroup"

  # Terraform Cloud/Enterprise use
  # source  = "app.terraform.io/embergertf/resourcegroup/azurerm"
  # version = "~>1.0.0"

  name_override = var.name_override

  region_code     = var.region_code2
  subsc_code      = var.subsc_code
  env             = var.env
  base_name       = var.base_name
  additional_name = var.additional_name
  iterator        = var.iterator

  owner      = var.owner
  add_random = var.add_random
  rnd_length = var.rnd_length
}
