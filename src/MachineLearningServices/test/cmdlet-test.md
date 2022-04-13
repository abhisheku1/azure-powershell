# Workspace
## New-AzMlWorkspace

swagger:
- path: https://github.com/zhaomuzhi/azure-rest-api-specs/blob/newVersion20211001/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2021-10-01/machineLearningServices.json#L68
- example: https://github.com/zhaomuzhi/azure-rest-api-specs/tree/newVersion20211001/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2021-10-01/examples/Workspace

```
New-AzMlWorkspace -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-AllowPublicAccessWhenBehindVnet] [-ApplicationInsight <String>] [-ContainerRegistry <String>]
 [-CosmoDbCollectionsThroughput <Int32>] [-Description <String>] [-DiscoveryUrl <String>]
 [-EncryptionStatus <EncryptionStatus>] [-FriendlyName <String>] [-HbiWorkspace]
 [-IdentityType <ResourceIdentityAssignment>] [-IdentityUserAssignedIdentity <Hashtable>]
 [-ImageBuildCompute <String>] [-KeyVault <String>] [-KeyVaultPropertyIdentityClientId <String>]
 [-KeyVaultPropertyKeyIdentifier <String>] [-KeyVaultPropertyKeyVaultArmId <String>] [-Location <String>]
 [-PrimaryUserAssignedIdentity <String>] [-PropertiesEncryptionIdentityUserAssignedIdentity <String>]
 [-PublicNetworkAccess <PublicNetworkAccess>] [-SharedPrivateLinkResource <ISharedPrivateLinkResource[]>]
 [-SkuCapacity <Int32>] [-SkuFamily <String>] [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>]
 [-StorageAccount <String>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

cmdlet:
- Location: to be mantory
- ApplicationInsight: ApplicationInsightId
- ContainerRegistry: ContainerRegistryId
- KeyVault: KeyVaultId
- KeyVaultPropertyIdentityClientId: KeyVaultIdentityClientId
- KeyVaultPropertyKeyIdentifier: KeyVaultKeyIdentifier
- KeyVaultPropertyKeyVaultArmId: KeyVaultArmId
- PropertiesEncryptionIdentityUserAssignedIdentity:EncryptionUserAssignedIdentity
- StorageAccount: StorageAccountId
- SharedPrivateLinkResource: []

request:
```pwsh
New-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-pwsh01 -Location eastus -Debug
```
```json
DEBUG: ============================ HTTP REQUEST ============================

PUT

Absolute Uri:
https://management.azure.com/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-pwsh01?api-version=2021-10-01

Headers:
x-ms-unique-id                : 3
x-ms-client-request-id        : 28e34ec6-8bea-4b34-8ec2-6862b7fb9f73
CommandName                   : New-AzMlWorkspace
FullCommandName               : New-AzMlWorkspace_CreateExpanded
ParameterSetName              : __AllParameterSets
User-Agent                    : AzurePowershell/v0.0.0,Az.MachineLearningWorkspaces/0.1.0

Body:
{
  "location": "eastus"
}

DEBUG: BeforeCall:
DEBUG: ============================ HTTP RESPONSE ============================

Status Code:
InternalServerError

Headers:
Cache-Control                 : no-cache
Pragma                        : no-cache
x-ms-failure-cause            : service
Request-Context               : appId=cid-v1:2d2e8e63-272e-4b3c-8598-4ee570a0e70d
x-ms-response-type            : error
Strict-Transport-Security     : max-age=31536000; includeSubDomains
X-Content-Type-Options        : nosniff
x-aml-cluster                 : vienna-eastus-01
x-request-time                : 0.244
x-ms-ratelimit-remaining-subscription-writes: 1198
x-ms-request-id               : eedfc2de-9568-4cc4-87d3-5803a7968a18
x-ms-correlation-request-id   : eedfc2de-9568-4cc4-87d3-5803a7968a18
x-ms-routing-request-id       : SOUTHEASTASIA:20220411T012809Z:eedfc2de-9568-4cc4-87d3-5803a7968a18
    "severity": null,
    "message": "Object reference not set to an instance of an object.",
    "messageFormat": null,
    "messageParameters": null,
    "referenceCode": null,
    "detailsUri": null,
    "target": null,
    "details": [],
    "innerError": null,
    "debugInfo": null,
    "additionalInfo": null
  },
  "correlation": {
    "operation": "b74ff0d952fff84e8833e1b1223cfbd8",
    "request": "1fe6cc490ce24d8d"
  },
  "environment": "eastus",
  "location": "eastus",
  "time": "2022-04-11T09:28:09.8761147+08:00",
  "componentName": "account-rp"
}

Work Body:
{
  "properties": {
    "description": "",
    "friendlyName": "mlworkspace-portal02",
    "keyVault": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.keyvault/vaults/mlworkspacepor3438989530",
    "applicationInsights": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.insights/components/mlworkspacepor4743143400",
    "containerRegistry": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.containerregistry/registries/mlcontainerregistry02",
    "storageAccount": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.storage/storageaccounts/mlworkspacepor4057722609",
    "discoveryUrl": "https://eastus.api.azureml.ms/discovery",
    "hbiWorkspace": false,
    "publicNetworkAccess": "Enabled"
  },
  "identity": {
    "type": "SystemAssigned"
  },
  "sku": {
    "name": "Basic",
    "tier": "Basic"
  },
  "location": "eastus"
}

Response Body:
{
  "id": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-portal02",
  "name": "mlworkspace-portal02",
  "type": "Microsoft.MachineLearningServices/workspaces",
  "location": "eastus",
  "tags": {},
  "etag": null,
  "properties": {
    "friendlyName": "mlworkspace-portal02",
    "description": "",
    "storageAccount": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.storage/storageaccounts/mlworkspacepor4057722609",
    "keyVault": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.keyvault/vaults/mlworkspacepor3438989530",
    "applicationInsights": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.insights/components/mlworkspacepor4743143400",
    "hbiWorkspace": false,
    "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
    "imageBuildCompute": null,
    "provisioningState": "Succeeded",
    "containerRegistry": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.containerregistry/registries/mlcontainerregistry02",
    "notebookInfo": {
      "resourceId": "6089789c91a74be7ba9e235e9fed24b0",
      "fqdn": "ml-mlworkspace-port-eastus-03ce50c0-2e18-48ad-9e4a-ca338f571072.notebooks.azure.net",
      "isPrivateLinkEnabled": false,
      "notebookPreparationError": null
    },
    "storageHnsEnabled": false,
    "workspaceId": "03ce50c0-2e18-48ad-9e4a-ca338f571072",
    "linkedModelInventoryArmId": null,
    "privateLinkCount": 0,
    "publicNetworkAccess": "Enabled",
    "discoveryUrl": "https://eastus.api.azureml.ms/discovery",
    "mlFlowTrackingUri": "azureml://eastus.api.azureml.ms/mlflow/v1.0/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-portal02",
    "sdkTelemetryAppInsightsKey": "f5784ccd-178d-4ecc-9998-b05841b44ae9",
    "sasGetterUri": null
  },
  "identity": {
    "type": "SystemAssigned",
    "principalId": "0e0ab400-1387-4bd2-a2ab-9d6ff0ec6466",
    "tenantId": "72f988bf-86f1-41af-91ab-2d7cd011db47"
  },
  "sku": {
    "name": "Basic",
    "tier": "Basic"
  },
  "systemData": {
    "createdAt": "2022-04-11T01:28:08.1553574Z",
    "createdBy": "v-diya@microsoft.com",
    "createdByType": "User",
    "lastModifiedAt": "2022-04-11T01:35:39.6854637Z",
    "lastModifiedBy": "v-diya@microsoft.com",
    "lastModifiedByType": "User"
  }
}
```

# Job
## Create Job requirement
- ComputeId
- EnvironmentId
- CodeId
- Commmand(According to JobType)

## Create follow
1. Upload code to datastore then get uri of the code
2. Create code with code uri
3. Create job with computerid, environmentid, codeid, command.

# Datastore operations
## Get-AzMlWorkspaceDatastoreSecret
```powershell
PS [Az.MachineLearningWorkspaces]> Get-AzMlWorkspaceDatastoreSecret -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name workspaceblobstore
AccountKey
PS [Az.MachineLearningWorkspaces]> Get-AzMlWorkspaceDatastoreSecret -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name workspaceblobstore -debug

DEBUG: 11:02:33 AM - GetAzureRMContextCommand end processing.
DEBUG: [CmdletBeginProcessing]: Starting command
DEBUG: CmdletBeginProcessing:
DEBUG: CmdletProcessRecordStart:

Confirm
Are you sure you want to perform this action?
Performing the operation "Get-AzMlWorkspaceDatastoreSecret_List" on target "Call remote 'DatastoresListSecrets' operation".
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "Y"): A
DEBUG: [CmdletProcessRecordAsyncStart]: Created new QosEvent for command 'Get-AzMlWorkspaceDatastoreSecret_List'
DEBUG: CmdletProcessRecordAsyncStart:
DEBUG: CmdletGetPipeline:
DEBUG: CmdletBeforeAPICall:
DEBUG: URLCreated: /subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-portal01/datastores/workspaceblobstore/listSecrets?api-version=2021-10-01
DEBUG: RequestCreated: /subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-portal01/datastores/workspaceblobstore/listSecrets?api-version=2021-10-01
DEBUG: HeaderParametersAdded:
DEBUG: ============================ HTTP REQUEST ============================

HTTP Method:
POST

Absolute Uri:
https://management.azure.com/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-portal01/datastores/workspaceblobstore/listSecrets?api-version=2021-10-01

Headers:
x-ms-unique-id                : 10
x-ms-client-request-id        : 338502b8-05c6-4142-842d-59c526571db2
CommandName                   : Get-AzMlWorkspaceDatastoreSecret
FullCommandName               : Get-AzMlWorkspaceDatastoreSecret_List
ParameterSetName              : __AllParameterSets
User-Agent                    : AzurePowershell/v0.0.0,Az.MachineLearningWorkspaces/0.1.0

Body:



DEBUG: BeforeCall:
DEBUG: ============================ HTTP RESPONSE ============================

Status Code:
OK

Headers:
Cache-Control                 : no-cache
Pragma                        : no-cache
x-ms-ratelimit-remaining-subscription-writes: 1198
Request-Context               : appId=cid-v1:2d2e8e63-272e-4b3c-8598-4ee570a0e70d
x-ms-response-type            : standard
Strict-Transport-Security     : max-age=31536000; includeSubDomains
X-Content-Type-Options        : nosniff
x-aml-cluster                 : vienna-eastus-02
x-request-time                : 0.122
x-ms-request-id               : ea79733a-ea95-48ef-867a-177b9d55c042
x-ms-correlation-request-id   : ea79733a-ea95-48ef-867a-177b9d55c042
x-ms-routing-request-id       : SOUTHEASTASIA:20220413T030235Z:ea79733a-ea95-48ef-867a-177b9d55c042
Date                          : Wed, 13 Apr 2022 03:02:35 GMT

Body:
{
  "secretsType": "AccountKey",
  "key": "JjX4pnUGyQVGuZxKRJ2u/CxQBMGp/e6ZyorjUtlnz/0PNwN11Y1/169zfyeldrfJOiWfZRPEOmyf+ASt4ZRPtw=="
}


DEBUG: ResponseCreated: 
DEBUG: BeforeResponseDispatch:
AccountKey
DEBUG: Finally:
DEBUG: CmdletAfterAPICall:
DEBUG: [CmdletProcessRecordAsyncEnd]: Finish HTTP process
DEBUG: CmdletProcessRecordAsyncEnd:
DEBUG: CmdletProcessRecordEnd:
DEBUG: AzureQoSEvent: Module: Az.MachineLearningWorkspaces:0.1.0; CommandName: Get-AzMlWorkspaceDatastoreSecret_List; PSVersion: ; IsSuccess: True; Duration: 00:00:00
DEBUG: Finish sending metric.
DEBUG: CmdletEndProcessing:
```


# Code
## New-AzMlWorkspaceCodeVersion
```powershell
# Work
New-AzMlWorkspaceCodeVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name 'cli-hello-example' -Version 1 -CodeUri "https://mlworkspacepor8056718628.blob.core.windows.net/azureml-blobstore-dc0f7f2b-686d-417b-a456-6c09def791f5/LocalUpload/a8da6e3978c9f8b1cb03501595a9142f/src"
```

# New-AzMlWorkspaceCompute
swagger:
- path: https://github.com/zhaomuzhi/azure-rest-api-specs/blob/newVersion20211001/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2021-10-01/machineLearningServices.json#L748
- example: https://github.com/zhaomuzhi/azure-rest-api-specs/tree/newVersion20211001/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2021-10-01/examples/Compute/createOrUpdate

```
New-AzMlWorkspaceCompute -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 -Compute <IComputeResource> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

Support Compute type
- AKS
- AML
- DataFactory
- ComputerInstance
- Kubernetes

Request
```json
GET

Absolute Uri:
https://management.azure.com/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-portal01/computes/v-diya1?api-version=2021-10-01

Headers:
x-ms-unique-id                : 15
x-ms-client-request-id        : 6b55db1f-2172-486c-b460-6da468a4f644
CommandName                   : Get-AzMlWorkspaceCompute
FullCommandName               : Get-AzMlWorkspaceCompute_Get
ParameterSetName              : __AllParameterSets
User-Agent                    : AzurePowershell/v0.0.0,Az.MachineLearningWorkspaces/0.1.0

Body:



DEBUG: BeforeCall:
DEBUG: ============================ HTTP RESPONSE ============================

Status Code:
OK

Headers:
Cache-Control                 : no-cache
Pragma                        : no-cache
Vary                          : Accept-Encoding
x-ms-request-id               : 9fb815ef-5085-42c1-8548-23b95d14dddd
x-ms-ratelimit-remaining-subscription-reads: 11983
Request-Context               : appId=cid-v1:2d2e8e63-272e-4b3c-8598-4ee570a0e70d
x-ms-response-type            : standard
Strict-Transport-Security     : max-age=31536000; includeSubDomains
X-Content-Type-Options        : nosniff
x-aml-cluster                 : vienna-eastus-01
x-request-time                : 0.301
x-ms-correlation-request-id   : 9fb815ef-5085-42c1-8548-23b95d14dddd
x-ms-routing-request-id       : SOUTHEASTASIA:20220411T023315Z:9fb815ef-5085-42c1-8548-23b95d14dddd
Date                          : Mon, 11 Apr 2022 02:33:15 GMT

Body:
{
  "id": "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-portal01/computes/v-diya1",
  "name": "v-diya1",
  "type": "Microsoft.MachineLearningServices/workspaces/computes",
  "location": "eastus",
  "tags": {},
  "properties": {
    "createdOn": "2022-04-11T09:49:09.7697662+08:00",
    "modifiedOn": "2022-04-11T09:51:46.6558196+08:00",
    "disableLocalAuth": true,
    "description": null,
    "resourceId": null,
    "computeType": "ComputeInstance",
    "computeLocation": "eastus",
    "provisioningState": "Succeeded",
    "provisioningErrors": null,
    "isAttachedCompute": false,
    "properties": {
      "vmSize": "STANDARD_DS3_V2",
      "subnet": null,
      "sshSettings": {
        "sshPublicAccess": "Disabled",
        "adminUserName": "azureuser",
        "sshPort": 4001,
        "adminPublicKey": null
      },
      "errors": [],
      "connectivityEndpoints": {
        "publicIpAddress": "20.81.95.223",
        "privateIpAddress": "10.0.0.5"
      },
      "applications": [
        {
          "displayName": "Jupyter",
          "endpointUri": "https://v-diya1.eastus.instances.azureml.ms/tree/"
        },
        {
          "displayName": "Jupyter Lab",
          "endpointUri": "https://v-diya1.eastus.instances.azureml.ms/lab"
        },
        {
          "displayName": "RStudio",
          "endpointUri": "https://v-diya1-8787.eastus.instances.azureml.ms"
        }
      ],
      "state": "Running",
      "lastOperation": {
        "operationName": "Create",
        "operationTime": "2022-04-11T09:49:11.992+08:00",
        "operationStatus": "Succeeded",
        "operationTrigger": "User"
      },
      "createdBy": {
        "userOrgId": "72f988bf-86f1-41af-91ab-2d7cd011db47",
        "userId": "97deab6c-e478-40b4-b4da-e7d9353dc1e8"
      },
      "applicationSharingPolicy": "Shared",
      "computeInstanceAuthorizationType": null,
      "personalComputeInstanceSettings": null,
      "setupScripts": null,
      "schedules": {
        "computeStartStop": []
      },
      "dataMounts": null,
      "dataDisks": null,
      "containers": null,
      "updateStatus": null,
      "versions": {
        "runtime": "3.0.01915.0001"
      }
    }
  }
}
```

# New-AzMlWorkspaceEnvironmentContainer
swagger:
- path:
- example:

cmdlet:
- the cmdlet name shoud be New-AzMlWorkspaceEnvironment

# New-AzMlWorkspaceCodeContainer

swagger: 
- path: https://github.com/zhaomuzhi/azure-rest-api-specs/blob/newVersion20211001/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2021-10-01/mfe.json#L854
- example: https://github.com/zhaomuzhi/azure-rest-api-specs/tree/newVersion20211001/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2021-10-01/examples/CodeContainer

request:
```pwsh
New-AzMlWorkspaceCodeContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name codecontainer01 -Description "powershell test" -Debug
```

```json
DEBUG: ============================ HTTP REQUEST ============================

HTTP Method:
PUT

Absolute Uri:
https://management.azure.com/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-portal01/codes/codecontainer01?api-version=2021-10-01

Headers:
x-ms-unique-id                : 21
x-ms-client-request-id        : c352340e-59ce-4f56-bd51-1977e4de3d52
CommandName                   : New-AzMlWorkspaceCodeContainer
FullCommandName               : New-AzMlWorkspaceCodeContainer_CreateExpanded
ParameterSetName              : __AllParameterSets
User-Agent                    : AzurePowershell/v0.0.0,Az.MachineLearningWorkspaces/0.1.0

Body:
{
  "properties": {
    "description": "powershell test"
  }
}


DEBUG: BeforeCall:
DEBUG: ============================ HTTP RESPONSE ============================

Body:
{
  "error": {
    "code": "ServiceError",
    "message": "InternalServerError",
    "details": [],
    "additionalInfo": [
      {
        "type": "ComponentName",
        "info": {
          "value": "managementfrontend"
        }
      },
      {
        "type": "Correlation",
        "info": {
          "value": {
            "operation": "e8098673ac0805428d3439237bfb4a81",
            "request": "c1995222efcdb178"
          }
        }
      },
      {
        "type": "Environment",
        "info": {
          "value": "eastus"
        }
      },
      {
        "type": "Location",
        "info": {
          "value": "eastus"
        }
      },
      {
        "type": "Time",
        "info": {
          "value": "2022-04-11T14:23:12.4617827+08:00"
        }
      }
    ]
  }
```

```pwsh
Get-AzMlWorkspaceCodeContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Debug
```
```json
DEBUG: ============================ HTTP REQUEST ============================

HTTP Method:
GET

Absolute Uri:
https://management.azure.com/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/providers/Microsoft.MachineLearningServices/workspaces/mlworkspace-portal01/codes?api-version=2021-10-01

Body:


DEBUG: ============================ HTTP RESPONSE ============================


Body:
{
  "error": {
    "code": "UserError",
    "message": "CodeContainers_List is not supported",
    "details": [],
    "additionalInfo": [
      {
        "type": "ComponentName",
        "info": {
          "value": "managementfrontend"
        }
      },
      {
        "type": "Correlation",
        "info": {
          "value": {
            "operation": "9034cc167b7dc34a815e4acfaf4cf7c7",
            "request": "c16f254b86b1b525"
          }
        }
      },
      {
        "type": "Environment",
        "info": {
          "value": "eastus"
        }
      },
      {
        "type": "Location",
        "info": {
          "value": "eastus"
        }
      },
      {
        "type": "Time",
        "info": {
          "value": "2022-04-11T14:24:55.9926373+08:00"
        }
      },
      {
        "info": {
          "value": {
            "code": "NotSupported",
            "innerError": null
          }
        }
      },
      {
        "type": "MessageFormat",
        "info": {
          "value": "{scenario} is not supported"
        }
      },
      {
        "type": "MessageParameters",
        "info": {
          "value": {
            "scenario": "CodeContainers_List"
          }
        }
      }
    ]
  }
}
```

# Get-AzMlWorkspaceJob
swagger:
- path
- example

cmdlet:

- Id: Name

