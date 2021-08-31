<!-- region Generated -->
# Az.Resources
This directory contains the PowerShell module for the Mg service.

---
## Status
[![Az.Resources](https://img.shields.io/powershellgallery/v/Az.Resources.svg?style=flat-square&label=Az.Resources "Az.Resources")](https://www.powershellgallery.com/packages/Az.Resources/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Module Requirements
- [Az.Accounts module](https://www.powershellgallery.com/packages/Az.Accounts/), version 1.8.1 or greater

## Authentication
AutoRest does not generate authentication code for the module. Authentication is handled via Az.Accounts by altering the HTTP payload before it is sent.

## Development
For information on how to develop for `Az.Resources`, see [how-to.md](how-to.md).
<!-- endregion -->

---
## Generation Requirements
Use of the beta version of `autorest.powershell` generator requires the following:
- [NodeJS LTS](https://nodejs.org) (10.15.x LTS preferred)
  - **Note**: It *will not work* with Node < 10.x. Using 11.x builds may cause issues as they may introduce instability or breaking changes.
> If you want an easy way to install and update Node, [NVS - Node Version Switcher](../nodejs/installing-via-nvs.md) or [NVM - Node Version Manager](../nodejs/installing-via-nvm.md) is recommended.
- [AutoRest](https://aka.ms/autorest) v3 beta <br>`npm install -g autorest@beta`<br>&nbsp;
- PowerShell 6.0 or greater
  - If you don't have it installed, you can use the cross-platform npm package <br>`npm install -g pwsh`<br>&nbsp;
- .NET Core SDK 2.0 or greater
  - If you don't have it installed, you can use the cross-platform npm package <br>`npm install -g dotnet-sdk-2.2`<br>&nbsp;

## Run Generation
In this directory, run AutoRest:
> `autorest`

---
### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
require:
  - $(this-folder)/../../readme.azure.noprofile.md

module-name: $(prefix).Resources
branch: ab0f23af91b5898e83645cf2a2f0357362745f53
repo: https://github.com/microsoftgraph/msgraph-sdk-powershell/blob/$(branch)
input-file:
  - $(repo)/openApiDocs/v1.0/Applications.yml
  - $(repo)/openApiDocs/v1.0/Users.yml
  - $(repo)/openApiDocs/v1.0/Groups.yml

title: Mg
module-version: 0.1.0
identity-correction-for-post: true
# prefix: Az
# subject-prefix: ''

directive:

  - no-inline:
    - microsoft.graph.sharepointIds
    - microsoft.graph.identitySet
    - microsoft.graph.itemReference
    - microsoft.graph.directoryObject
    - microsoft.graph.user
    - microsoft.graph.drive
    - microsoft.graph.listItem
    - microsoft.graph.post
    - microsoft.graph.sectionGroup
    - microsoft.graph.team
    - microsoft.graph.recipient
    - microsoft.graph.groupPolicyCategory
    - microsoft.graph.printer
    - microsoft.graph.printerShare
    - microsoft.graph.governanceResource
    - microsoft.graph.governanceRoleAssignment
    - microsoft.graph.governanceRoleDefinition
    - microsoft.graph.workbookOperationError
    - microsoft.graph.parentLabelDetails
    - microsoft.graph.ediscovery.tag
    - microsoft.graph.ediscovery.sourceCollection
    - microsoft.graph.contentType
    - microsoft.graph.columnDefinition

  - where:
      subject: \b(?!application$|applicationpassword$|serviceprincipal$|serviceprincipalpassword$|groupmember$|user$|group$)\S+
    remove: true

  - where:
      subject: ^application$|^group$|^serviceprincipal$
      variant: GetExpanded
    remove: true

  - where:
      subject: ^application$|^group$|^serviceprincipal$|^user$
      variant: ^Update$
    remove: true

  - where:
      subject: ^application$|^serviceprincipal$|^group$
      verb: restore
    remove: true
  
  - where:
      model-name: ^MicrosoftGraphList1?$|^MicrosoftGraphDrive1?$|^MicrosoftGraphSite1?$
      property-name: Item
    set:
      property-name: Items

```
