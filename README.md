<!-- BEGIN_TF_DOCS -->
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

## Documentation
<!-- markdownlint-disable MD033 -->

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.0 |

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_rg_name"></a> [rg\_name](#module\_rg\_name) | app.terraform.io/embergertf/base/azurerm | ~>1.0.0 |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_random"></a> [add\_random](#input\_add\_random) | (Optional) When set to `true`, it will add a `rnd_length`'s long `random_number` at the name's end. | `bool` | `false` | no |
| <a name="input_additional_name"></a> [additional\_name](#input\_additional\_name) | (Optional) Additional suffix to create resource uniqueness. It will be separated by a `'-'` from the "name's generated" suffix. Example: `lan1`. | `string` | `null` | no |
| <a name="input_additional_tags"></a> [additional\_tags](#input\_additional\_tags) | (Optional) Additional tags for the Resource Group. | `map(string)` | `null` | no |
| <a name="input_base_name"></a> [base\_name](#input\_base\_name) | (Optional) Resource "base" name. Example: `aks`. | `string` | `null` | no |
| <a name="input_env"></a> [env](#input\_env) | (Optional) Environment code. Example: `test`. <br></br>&#8226; Value of `env` examples can be: `[nonprod,prod,core,int,uat,stage,dev,test]`. | `string` | `"test"` | no |
| <a name="input_iterator"></a> [iterator](#input\_iterator) | (Optional) Iterator to create resource uniqueness. It will be separated by a `'-'` from the "name's generated + additional\_name" concatenation. Example: `001`. | `string` | `null` | no |
| <a name="input_max_length"></a> [max\_length](#input\_max\_length) | (Optional) Set the maximum length of the generated name. If over, the name will be trimmed to the `max_length`, considering the eventual `random_number` suffix. See this link for reference: [Resource name rules](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules) | `number` | `63` | no |
| <a name="input_name_override"></a> [name\_override](#input\_name\_override) | (Optional) Full name to override all the name generation logic. Example: 'biglittletest' will generate the resource group name "'rg-biglittletest'". | `string` | `null` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | (Optional) Deployed resources owner. | `string` | `"emberger"` | no |
| <a name="input_region_code"></a> [region\_code](#input\_region\_code) | (Optional) Resource region code.<br></br>&#8226; Value of `region_code` must be one of: `[usnc,ussc]`. | `string` | `"usnc"` | no |
| <a name="input_rnd_length"></a> [rnd\_length](#input\_rnd\_length) | (Optional) Set the length of the `random_number` generated. | `number` | `2` | no |
| <a name="input_subsc_code"></a> [subsc\_code](#input\_subsc\_code) | (Optional) Subscription code or abbreviation. Example: `azint`. | `string` | `"azint"` | no |

### Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Resource group Id. |
| <a name="output_location"></a> [location](#output\_location) | Resource group location. |
| <a name="output_name"></a> [name](#output\_name) | Resource group name. |
| <a name="output_random_suffix"></a> [random\_suffix](#output\_random\_suffix) | Randomized piece of the Resource group name when "`add_random = true`". |
| <a name="output_tags"></a> [tags](#output\_tags) | Resource group tags. |

<!-- END_TF_DOCS -->