<!-- region Generated -->
# Az.Authorization
This directory contains the PowerShell module for the Authorization service.

---
## Status
[![Az.Authorization](https://img.shields.io/powershellgallery/v/Az.Authorization.svg?style=flat-square&label=Az.Authorization "Az.Authorization")](https://www.powershellgallery.com/packages/Az.Authorization/)

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
For information on how to develop for `Az.Authorization`, see [how-to.md](how-to.md).
<!-- endregion -->

### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
require:
  - $(this-folder)/../../readme.azure.noprofile.md
input-file:
  - https://github.com/Azure/azure-rest-api-specs/blob/0023223a23b7a8c1693f7d88678787e50fee6c96/specification/authorization/resource-manager/Microsoft.Authorization/preview/2020-10-01-preview/RoleManagementPolicy.json
  - https://github.com/Azure/azure-rest-api-specs/blob/23800927d61999e655f6fd7fd054deaa80385683/specification/authorization/resource-manager/Microsoft.Authorization/preview/2020-10-01-preview/RoleManagementPolicyAssignment.json
  - https://github.com/Azure/azure-rest-api-specs/blob/0023223a23b7a8c1693f7d88678787e50fee6c96/specification/authorization/resource-manager/Microsoft.Authorization/preview/2020-10-01-preview/RoleEligibilitySchedule.json
  - https://github.com/Azure/azure-rest-api-specs/blob/0023223a23b7a8c1693f7d88678787e50fee6c96/specification/authorization/resource-manager/Microsoft.Authorization/preview/2020-10-01-preview/RoleEligibilityScheduleRequest.json

title: Authorization
module-version: 4.2.0
# remove subject-prefix for all generated cmdlets.
subject-prefix: ''
identity-correction-for-post: true

directive:

  # Remove "GetViaIdentity" syntax variant of the cmdlets. Because of unable create corresponding "ViaIdentity" with the cmdlet in az powershell.
  - where:
      verb: Get
      variant: ^GetViaIdentity$
      subject: RoleEligibilitySchedule$
    remove: true

  # Remove "ViaIdentity" syntax variant of the cmdlets. Because of unable create corresponding "ViaIdentity" with the cmdlet in az powershell.
  - where:
      variant: ^GetViaIdentity$|^DeleteViaIdentity$|^Update$|^UpdateViaIdentity$|^UpdateViaIdentityExpanded$
      subject: RoleManagementPolicy$
    remove: true

  # Remove "Create", "CreateViaIdentity", "CreateViaIdentityExpanded" syntax variant of the cmdlets. Because of new cmdlet does unsupport.
  - where:
      verb: New
      variant: ^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$
      subject: RoleEligibilityScheduleRequest$|RoleManagementPolicyAssignment$
    remove: true
```
