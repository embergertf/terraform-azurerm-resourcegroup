#
# Copyright 2023 - Emmanuel Bergerat
#

#--------------------------------------------------------------
#   Test Resource Group module Main
#--------------------------------------------------------------
module "rg1_region1" {
  # Local use
  source = "../../terraform-azurerm-resourcegroup"

  # name_override = var.name_override

  region_code     = var.region_code1
  subsc_code      = var.subsc_code
  env             = var.env
  base_name       = var.base_name
  additional_name = var.additional_name
  iterator        = var.iterator

  owner      = var.owner
  add_random = var.add_random
  rnd_length = var.rnd_length

  additional_tags = var.additional_tags
}
module "rg2_region2" {
  # Terraform Cloud use
  source  = "app.terraform.io/embergertf/resourcegroup/azurerm"
  version = "~>1.3.3"

  # name_override = var.name_override

  region_code     = var.region_code2
  subsc_code      = var.subsc_code
  env             = var.env
  base_name       = var.base_name
  additional_name = var.additional_name
  iterator        = var.iterator

  owner      = var.owner
  add_random = true
  rnd_length = 3

  additional_tags = var.additional_tags
}

module "rg3_region1" {
  # Terraform Cloud PMR use
  source  = "app.terraform.io/embergertf/resourcegroup/azurerm"
  version = "~>1.3.3"

  name_override = "override-test-embergertf"
  region_code     = var.region_code1

  # subsc_code      = var.subsc_code
  # env             = var.env
  # base_name       = var.base_name
  # additional_name = var.additional_name
  # iterator        = var.iterator

  # owner      = var.owner
  # add_random = true
  # rnd_length = 3

  additional_tags = var.additional_tags
}

