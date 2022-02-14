<!-- region Generated -->
# Az.MachineLearningWorkspaces
This directory contains the PowerShell module for the MachineLearningWorkspaces service.

---
## Status
[![Az.MachineLearningWorkspaces](https://img.shields.io/powershellgallery/v/Az.MachineLearningWorkspaces.svg?style=flat-square&label=Az.MachineLearningWorkspaces "Az.MachineLearningWorkspaces")](https://www.powershellgallery.com/packages/Az.MachineLearningWorkspaces/)

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
For information on how to develop for `Az.MachineLearningWorkspaces`, see [how-to.md](how-to.md).
<!-- endregion -->

---
### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
require:
  - $(this-folder)/../readme.azure.noprofile.md
# lock the commit
input-file:
  - https://github.com/Azure/azure-rest-api-specs/blob/main/specification/machinelearningservices/resource-manager/Microsoft.MachineLearningServices/preview/2022-01-01-preview/machineLearningServices.json
module-version: 0.1.0
subject-prefix: $(service-name)
