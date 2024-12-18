#
# Copyright 2023 - Emmanuel Bergerat
#

#--------------------------------------------------------------
#   Test Resource Group module variables' values
#--------------------------------------------------------------
region_code1 = "usnc"
region_code2 = "ussc"
subsc_code   = "azint"
env          = "dev"
base_name    = "embergertf"
# additional_name = ""
iterator = "01"
additional_tags = {
  Test_by    = "Manu",
  GitHub_org = "embergertf"
}


naming_values_test = {
  region_code     = "uswe2"
  subsc_code      = "mcaps"
  env             = "test"
  base_name       = "embergertf"
  additional_name = "resourcegroup"
  iterator        = "02"
  owner           = "Manu"
  additional_tags = {
    Test_by    = "Manu",
    GitHub_org = "embergertf"
  }
}
