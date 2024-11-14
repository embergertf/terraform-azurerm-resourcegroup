# Changelog
<!-- markdownlint-disable MD024 -->

[[_TOC_]]

All notable changes to this module are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

<!-- ## [Unreleased]
### Added
### Changed
### Removed -->

## [2.1.1] - 2024-11-14 - Modified `additional_tags` processing

### Modified

- `additional_tags` moved from RG resource to base module

## [2.1.0] - 2024-10-31 - Added output `resource_group_name`

### Added

- output `resource_group_name`

## [2.0.0] - 2024-10-31 - Adding `naming_values` for modules chaining

### Added

- variable `naming_values`
- output `naming_values`

### Changed

- variable `subsc_code` is now optional (`{default = null}`)
- module `embergertf/base/azurerm` from version `~> 3.1` to `~> 4.0`

## [1.4.0] - 2024-10-31 - Upgraded versions

### Changed

- `"app.terraform.io/embergertf/base/azurerm"` from version `~> 3.0.0` to `"~> 3.1"`
- `"hashicorp/azurerm"` from version `">=3.0"` to `"~> 4.7"`
- Renamed `providers.tf` to `required_providers.tf`
- Updated `Example/` content

## [1.3.4] - 2023-02-24 - Set `region_code` as a required variable

### Changed

- Variable `region_code` got `default = null` removed as a Resource Group requires a location.

## [1.3.3] - 2023-02-23 - Use of base module v3.0.0

### Changed

- Use of base module v3.0.0 with updated base tags

## [1.3.0] - 2023-02-23 - Removed validation on `region_code`

### Changed

- `region_code` has a `null` default and no more validation. Validation is left to the `base` module to avoid cascading updates.

## [1.2.0] - 2023-02-22 - Replaces 3 defaults by `null`

### Changed

- Defaults values for `subsc_code`, `env` and `owner` replaced by `null`

## [1.1.0] - 2023-02-22 - Added region codes `CAC` & `CAE`

### Changed

- Added `CAC` & `CAE` Azure regions' codes

## [1.0.0] - 2022-10-18 - Initial version release

### Added

- Added Resource Group module
