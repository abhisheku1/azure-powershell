<!-- region Generated -->
# Az.Education
This directory contains the PowerShell module for the Education service.

---
## Status
[![Az.Education](https://img.shields.io/powershellgallery/v/Az.Education.svg?style=flat-square&label=Az.Education "Az.Education")](https://www.powershellgallery.com/packages/Az.Education/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Module Requirements
- [Az.Accounts module](https://www.powershellgallery.com/packages/Az.Accounts/), version 2.2.3 or greater

## Authentication
AutoRest does not generate authentication code for the module. Authentication is handled via Az.Accounts by altering the HTTP payload before it is sent.

## Development
For information on how to develop for `Az.Education`, see [how-to.md](how-to.md).
<!-- endregion -->

---
### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
require:
  - $(this-folder)/../readme.azure.noprofile.md
# lock the commit
input-file:
  - $(this-folder)/test/swagger/education.json
module-version: 0.1.0
subject-prefix: $(service-name)
