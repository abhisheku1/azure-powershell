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

### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
# branch: 476564a1aa6ddb38ec681c9f89d42f00c1becd25
require:
  - $(this-folder)/../readme.azure.noprofile.md
input-file:
  - https://github.com/zhaomuzhi/azure-rest-api-specs/blob/newVersion20211001/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2021-10-01/machineLearningServices.json
  - https://github.com/zhaomuzhi/azure-rest-api-specs/blob/newVersion20211001/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2021-10-01/workspaceFeatures.json
  - https://github.com/zhaomuzhi/azure-rest-api-specs/blob/newVersion20211001/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2021-10-01/mfe.json

subject-prefix: 'MLWorkspace'
resourcegroup-append: true
nested-object-to-string: true
identity-correction-for-post: true

directive:
  # All root resources except workspace will use AzMLService as noun prefix.
  - where:
      subject: Usage
    set:
      subject-prefix: MLService

  - where:
      subject: Quota
    set:
      subject-prefix: MLService

  - where:
      subject: VirtualMachineSize
    set:
      subject-prefix: MLService
      subject: VMSize
  # Remove private cmdlets. it been supported in the Az.Network.
  - where:
      subject: PrivateEndpointConnection|PrivateLinkResource
    remove: true

  - where:
      verb: Get
      subject: Datastore
      variant: ^List$
      parameter-name: Name
    set:
      parameter-name: SearchName

  - where:
      verb: New
      variant: ^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$
    remove: true
  
  - where:
      variant: ^Update$|^UpdateViaIdentity$
    remove: true

  - where:
      subject: ComputeKey|ComputeNode
      parameter-name: ComputeName
    set:
      parameter-name: Name

  - where:
      subject: Connection
      parameter-name: ConnectionName
    set:
      parameter-name: Name

  - where:
      subject: OnlineDeployment|OnlineDeploymentLog|DeploymentSku|BatchDeployment
      parameter-name: DeploymentName
    set:
      parameter-name: Name

  - where:
      subject: OnlineEndpoint|OnlineEndpointKey|OnlineEndpointToken|BatchEndpoint
      parameter-name: EndpointName
    set:
      parameter-name: Name
```
